.class public Lcom/facebook/katana/FeedbackAdapter$Item;
.super Ljava/lang/Object;
.source "FeedbackAdapter.java"
.field public static final TYPE_COMMENT:I = 0x1f
.field public static final TYPE_LIKE_CONTROL:I = 0x20
.field public static final TYPE_LINK_ATTACHMENT_POST:I = 0x2
.field public static final TYPE_PHOTO_ATTACHMENT_POST:I = 0x1
.field public static final TYPE_STATUS_POST:I = 0x0
.field public static final TYPE_VIDEO_ATTACHMENT_POST:I = 0x3
.field public static final TYPE_VIEW_MORE_COMMENTS:I = 0x1e
.field private final mType:I
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/facebook/katana/FeedbackAdapter$Item;->mType:I
return-void
.end method
.method public getType()I
.registers 2
iget v0, p0, Lcom/facebook/katana/FeedbackAdapter$Item;->mType:I
return v0
.end method