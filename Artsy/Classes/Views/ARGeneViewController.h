@interface ARGeneViewController : UIViewController

- (instancetype)initWithGeneID:(NSString *)geneID;
- (instancetype)initWithGene:(Gene *)gene;

@property (nonatomic, strong, readonly) Gene *gene;
@property (nonatomic) BOOL shouldAnimate;

@end
