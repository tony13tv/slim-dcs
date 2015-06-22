<?php
class Config {
	private static $inst = null;
	private $config = array();

	public function __construct() {
		$this->config = json_decode(file_get_contents('_config/config.json'), true);
		if($this->config["environment"] == 'dev') {	
			$files = glob("_config/*-dev.json");
			foreach($files as $file) {
				$config = json_decode(file_get_contents($file), true);
				$this->config = array_replace_recursive($this->config, (array)$config);
			}
		}
	}

	public static function inst() {
		if(Config::$inst == null) {
			Config::$inst = new Config();
		}
		return Config::$inst;
	}

	public function get($name) {
		$parts = split('\.', $name);
		$config = $this->config;
		do {
			$part = array_shift($parts);
			$config = $config[$part];
		} while(count($parts) > 0);
		return $config;
	}
}