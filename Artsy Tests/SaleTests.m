SpecBegin(Sale)

describe(@"past auction", ^{
    __block Sale *_pastAuction;

    beforeEach(^{
        _pastAuction = [Sale saleWithStart:[NSDate distantPast] end:[NSDate distantPast]];
    });

    it(@"is not active", ^{
        expect(_pastAuction.isCurrentlyActive).to.beFalsy();
    });
});

describe(@"current auction", ^{
    __block Sale *_currentAuction;

    beforeEach(^{
        _currentAuction = [Sale saleWithStart:[NSDate distantPast] end:[NSDate distantFuture]];
    });

    it(@"is active", ^{
        expect(_currentAuction.isCurrentlyActive).to.beTruthy();
    });
});

describe(@"future auction", ^{
    __block Sale *_futureAuction;

    beforeEach(^{
        _futureAuction = [Sale saleWithStart:[NSDate distantFuture] end:[NSDate distantFuture]];
    });

    it(@"is active", ^{
        expect(_futureAuction.isCurrentlyActive).to.beFalsy();
    });
});

SpecEnd
