.class Lco/vine/android/widget/FeedAdapter$7;
.super Ljava/lang/Object;
.source "FeedAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/widget/FeedAdapter;->bindView(Lco/vine/android/widget/FeedViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/widget/FeedAdapter;

.field final synthetic val$post:Lco/vine/android/api/VinePost;


# direct methods
.method constructor <init>(Lco/vine/android/widget/FeedAdapter;Lco/vine/android/api/VinePost;)V
    .registers 3

    iput-object p1, p0, Lco/vine/android/widget/FeedAdapter$7;->this$0:Lco/vine/android/widget/FeedAdapter;

    iput-object p2, p0, Lco/vine/android/widget/FeedAdapter$7;->val$post:Lco/vine/android/api/VinePost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter$7;->this$0:Lco/vine/android/widget/FeedAdapter;

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lco/vine/android/widget/FeedAdapter$7;->val$post:Lco/vine/android/api/VinePost;

    iget-wide v1, v1, Lco/vine/android/api/VinePost;->postId:J

    iget-object v3, p0, Lco/vine/android/widget/FeedAdapter$7;->val$post:Lco/vine/android/api/VinePost;

    iget-wide v3, v3, Lco/vine/android/api/VinePost;->userId:J

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lco/vine/android/CommentsActivity;->start(Landroid/content/Context;JJZ)V

    return-void
.end method
