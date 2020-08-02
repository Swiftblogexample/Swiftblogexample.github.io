//
//  File.swift
//  
//
//  Created by Thomas Kellough on 8/2/20.
//

import Publish
import Plot

extension Node where Context == HTML.BodyContext {
    
    static func postsBy(author: String, section: Section<BlogExample>, on site: BlogExample) -> Node {
        
        let items = section.items.filter {
            $0.metadata.author == author
        }
        
        return
            .wrapper(
                .div(
                    .h1("Posts by \(author)"),
                    .postContent(for: items, on: site)
                )
        )
    }
    
}
