.class public Lco/vine/android/widget/GenericVideoAdapter$SpanCommentObjectTag;
.super Ljava/lang/Object;
.source "GenericVideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/widget/GenericVideoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpanCommentObjectTag"
.end annotation


# instance fields
.field public final authorId:J

.field public final postId:J

.field final synthetic this$0:Lco/vine/android/widget/GenericVideoAdapter;


# direct methods
.method public constructor <init>(Lco/vine/android/widget/GenericVideoAdapter;JJ)V
    .registers 6

    iput-object p1, p0, Lco/vine/android/widget/GenericVideoAdapter$SpanCommentObjectTag;->this$0:Lco/vine/android/widget/GenericVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lco/vine/android/widget/GenericVideoAdapter$SpanCommentObjectTag;->postId:J

    iput-wide p4, p0, Lco/vine/android/widget/GenericVideoAdapter$SpanCommentObjectTag;->authorId:J

    return-void
.end method
