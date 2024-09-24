mixin FlyBehaviour {
	void flyStraight() => print('I can fly straight');
	void flyInCircle() => print('I can fly in circle');
	void dive() => print('Flying down');
	void soar() => print('Flying up');
}

mixin CrawlingBehaviour {
	void crawlSlow() => print('Crawl slow');
	void log() => print('Crawl Log history');
}

class Mosquito with FlyBehaviour, CrawlingBehaviour{}

void main(){
	Mosquito m = Mosquito();
	m.flyInCircle();
	m.crawlSlow();
	m.log();
}