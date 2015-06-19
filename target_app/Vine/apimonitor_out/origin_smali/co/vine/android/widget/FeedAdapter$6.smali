.class Lco/vine/android/widget/FeedAdapter$6;
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

.field final synthetic val$userId:J


# direct methods
.method constructor <init>(Lco/vine/android/widget/FeedAdapter;J)V
    .registers 4

    iput-object p1, p0, Lco/vine/android/widget/FeedAdapter$6;->this$0:Lco/vine/android/widget/FeedAdapter;

    iput-wide p2, p0, Lco/vine/android/widget/FeedAdapter$6;->val$userId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter$6;->this$0:Lco/vine/android/widget/FeedAdapter;

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mTimelineFragment:Lco/vine/android/BaseTimelineFragment;

    iget-wide v1, p0, Lco/vine/android/widget/FeedAdapter$6;->val$userId:J

    invoke-virtual {v0, v1, v2}, Lco/vine/android/BaseTimelineFragment;->onRevineBySpanClicked(J)V

    return-void
.end method
