.class public Lcom/facebook/katana/EventBirthdaysAdapter$Item;
.super Ljava/lang/Object;
.source "EventBirthdaysAdapter.java"
.field private final mBar:Ljava/lang/String;
.field private final mDay:I
.field private final mDisplayName:Ljava/lang/String;
.field private final mImageUrl:Ljava/lang/String;
.field private final mMonth:I
.field private final mStartingTime:J
.field private final mUserId:J
.field private final mYear:I
.method public constructor <init>(JLjava/lang/String;IIILjava/lang/String;JLjava/lang/String;)V
.registers 11
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p1, p0, Lcom/facebook/katana/EventBirthdaysAdapter$Item;->mUserId:J
iput-object p3, p0, Lcom/facebook/katana/EventBirthdaysAdapter$Item;->mDisplayName:Ljava/lang/String;
iput p4, p0, Lcom/facebook/katana/EventBirthdaysAdapter$Item;->mMonth:I
iput p5, p0, Lcom/facebook/katana/EventBirthdaysAdapter$Item;->mDay:I
iput p6, p0, Lcom/facebook/katana/EventBirthdaysAdapter$Item;->mYear:I
iput-object p7, p0, Lcom/facebook/katana/EventBirthdaysAdapter$Item;->mImageUrl:Ljava/lang/String;
iput-wide p8, p0, Lcom/facebook/katana/EventBirthdaysAdapter$Item;->mStartingTime:J
iput-object p10, p0, Lcom/facebook/katana/EventBirthdaysAdapter$Item;->mBar:Ljava/lang/String;
return-void
.end method
.method public getBar()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/EventBirthdaysAdapter$Item;->mBar:Ljava/lang/String;
return-object v0
.end method
.method public getDay()I
.registers 2
iget v0, p0, Lcom/facebook/katana/EventBirthdaysAdapter$Item;->mDay:I
return v0
.end method
.method public getDisplayName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/EventBirthdaysAdapter$Item;->mDisplayName:Ljava/lang/String;
return-object v0
.end method
.method public getImageURL()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/EventBirthdaysAdapter$Item;->mImageUrl:Ljava/lang/String;
return-object v0
.end method
.method public getMonth()I
.registers 2
iget v0, p0, Lcom/facebook/katana/EventBirthdaysAdapter$Item;->mMonth:I
return v0
.end method
.method public getStartingTime()J
.registers 3
iget-wide v0, p0, Lcom/facebook/katana/EventBirthdaysAdapter$Item;->mStartingTime:J
return-wide v0
.end method
.method public getUserId()J
.registers 3
iget-wide v0, p0, Lcom/facebook/katana/EventBirthdaysAdapter$Item;->mUserId:J
return-wide v0
.end method
.method public getYear()I
.registers 2
iget v0, p0, Lcom/facebook/katana/EventBirthdaysAdapter$Item;->mYear:I
return v0
.end method