import Foundation
import AsyncPlus

extension Catchable {
    
    func reportToGoogle() {
        self.catchEscaping {
            err in
            print(err)
        }
    }
}

extension Catchable {
    func delayThenCatch() {
//        self.ensure {
//            await mockSleep(seconds: 2)
//        }.catch {
//            err in
//            print(err)
//        }.finally {
//            print("DONE")
//        }
    }
}

extension Recoverable where T == Int {
    func customRecover() {
        self.recoverEscaping {
            err -> Int in
            print(err)
            return 42
        }
    }
}
