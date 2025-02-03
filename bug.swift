func fetchData(completion: @escaping (Result<[String], Error>) -> Void) {
    // Simulate network request
    DispatchQueue.global().asyncAfter(deadline: .now() + 2) {
        let data = ["Data 1", "Data 2", "Data 3"]
        // Simulate network error with a random chance
        if arc4random_uniform(2) == 0 {
            completion(.failure(NSError(domain: "Network Error", code: 0, userInfo: nil)))
        } else {
            completion(.success(data))
        }
    }
}