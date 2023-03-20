import Foundation
import Llama

public func runLlama(with query: String, model: String) {
    let args = ["main", "-m", model, "-t", "8", "-n", "128", "-p", query]
    var cargs = args.map { strdup($0) }
    llama_main(Int32(args.count), &cargs)
    for ptr in cargs { free(ptr) }
}
