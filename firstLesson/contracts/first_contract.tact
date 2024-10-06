import "@stdlib/deploy";

contract FirstContract with Deployable {
    // Empty init() function is present by default in all Tact contracts
    // since v1.3.0, so the following may be omitted:
    //

    counter : Int as uint32;
    init() {
        self.counter =0;
    }
    recieve("increment"){
        self.counter = self.counter +1;
    }

    get fun counter() : Int{
        return self.counter;
    }
}
