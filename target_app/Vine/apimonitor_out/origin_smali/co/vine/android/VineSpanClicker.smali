.class public Lco/vine/android/VineSpanClicker;
.super Ljava/lang/Object;
.source "VineSpanClicker.java"

# interfaces
.implements Lco/vine/android/widget/SpanClickListener;


# static fields
.field public static final FOLLOWERS_SPAN:I = 0x5

.field public static final FOLLOWING_SPAN:I = 0x6

.field public static final MANY_LIKES_SPAN:I = 0x2

.field public static final OLDER_COMMENTS_SPAN:I = 0x3

.field public static final POST_SPAN:I = 0x9

.field public static final REVINED_BY_SPAN:I = 0x8

.field public static final REVINERS_SPAN:I = 0x7

.field public static final SPAN_FLAGS:I = 0x21

.field public static final TAG_SPAN:I = 0x4

.field public static final USERNAME_SPAN:I = 0x1


# instance fields
.field private mActivity:Landroid/support/v4/app/FragmentActivity;

.field private mFlurryEventSource:Ljava/lang/String;

.field private mFragment:Lco/vine/android/BaseFragment;

.field private mUserId:J


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/vine/android/VineSpanClicker;->mActivity:Landroid/support/v4/app/FragmentActivity;

    return-void
.end method

.method public constructor <init>(Lco/vine/android/BaseFragment;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/vine/android/VineSpanClicker;->mFragment:Lco/vine/android/BaseFragment;

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/support/v4/app/FragmentActivity;
    .registers 2

    iget-object v0, p0, Lco/vine/android/VineSpanClicker;->mFragment:Lco/vine/android/BaseFragment;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lco/vine/android/VineSpanClicker;->mFragment:Lco/vine/android/BaseFragment;

    invoke-virtual {v0}, Lco/vine/android/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lco/vine/android/VineSpanClicker;->mActivity:Landroid/support/v4/app/FragmentActivity;

    goto :goto_a
.end method

.method public onFollowersClicked()V
    .registers 6

    invoke-virtual {p0}, Lco/vine/android/VineSpanClicker;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1d

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lco/vine/android/UsersActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "p_id"

    iget-wide v3, p0, Lco/vine/android/VineSpanClicker;->mUserId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "u_type"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lco/vine/android/VineSpanClicker;->startActivity(Landroid/content/Intent;)V

    :cond_1d
    return-void
.end method

.method public onFollowingClicked()V
    .registers 6

    invoke-virtual {p0}, Lco/vine/android/VineSpanClicker;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1d

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lco/vine/android/UsersActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "p_id"

    iget-wide v3, p0, Lco/vine/android/VineSpanClicker;->mUserId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "u_type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lco/vine/android/VineSpanClicker;->startActivity(Landroid/content/Intent;)V

    :cond_1d
    return-void
.end method

.method public onRevineBySpanClicked(J)V
    .registers 5

    invoke-virtual {p0}, Lco/vine/android/VineSpanClicker;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v1, p0, Lco/vine/android/VineSpanClicker;->mFlurryEventSource:Ljava/lang/String;

    invoke-static {v0, p1, p2, v1}, Lco/vine/android/ProfileActivity;->start(Landroid/content/Context;JLjava/lang/String;)V

    :cond_b
    return-void
.end method

.method public onSpanClicked(Landroid/view/View;ILjava/lang/Object;)V
    .registers 15

    invoke-virtual {p0}, Lco/vine/android/VineSpanClicker;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_9

    packed-switch p2, :pswitch_data_9e

    :cond_9
    :goto_9
    return-void

    :pswitch_a
    invoke-virtual {p0}, Lco/vine/android/VineSpanClicker;->onFollowingClicked()V

    goto :goto_9

    :pswitch_e
    invoke-virtual {p0}, Lco/vine/android/VineSpanClicker;->onFollowersClicked()V

    goto :goto_9

    :pswitch_12
    move-object v7, p3

    check-cast v7, Ljava/lang/Long;

    new-instance v6, Landroid/content/Intent;

    const-class v1, Lco/vine/android/UsersActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "post_id"

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v6, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "u_type"

    const/4 v2, 0x5

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v6}, Lco/vine/android/VineSpanClicker;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    :pswitch_2f
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lco/vine/android/SingleActivity;->start(Landroid/content/Context;J)V

    goto :goto_9

    :pswitch_39
    iget-object v1, p0, Lco/vine/android/VineSpanClicker;->mFragment:Lco/vine/android/BaseFragment;

    if-eqz v1, :cond_57

    iget-object v1, p0, Lco/vine/android/VineSpanClicker;->mFragment:Lco/vine/android/BaseFragment;

    instance-of v1, v1, Lco/vine/android/ProfileFragment;

    if-eqz v1, :cond_57

    iget-object v1, p0, Lco/vine/android/VineSpanClicker;->mFragment:Lco/vine/android/BaseFragment;

    check-cast v1, Lco/vine/android/ProfileFragment;

    invoke-virtual {v1}, Lco/vine/android/ProfileFragment;->getUserId()J

    move-result-wide v9

    if-eqz p3, :cond_57

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_57
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lco/vine/android/VineSpanClicker;->mFlurryEventSource:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lco/vine/android/ProfileActivity;->start(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_9

    :pswitch_63
    check-cast p3, Ljava/lang/String;

    invoke-static {v0, p3}, Lco/vine/android/HashtagActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_9

    :pswitch_69
    move-object v8, p3

    check-cast v8, Lco/vine/android/widget/GenericVideoAdapter$SpanCommentObjectTag;

    iget-wide v1, v8, Lco/vine/android/widget/GenericVideoAdapter$SpanCommentObjectTag;->postId:J

    iget-wide v3, v8, Lco/vine/android/widget/GenericVideoAdapter$SpanCommentObjectTag;->authorId:J

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lco/vine/android/CommentsActivity;->start(Landroid/content/Context;JJZ)V

    goto :goto_9

    :pswitch_75
    move-object v8, p3

    check-cast v8, Lco/vine/android/widget/GenericVideoAdapter$SpanCommentObjectTag;

    new-instance v6, Landroid/content/Intent;

    const-class v1, Lco/vine/android/UsersActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "post_id"

    iget-wide v2, v8, Lco/vine/android/widget/GenericVideoAdapter$SpanCommentObjectTag;->postId:J

    invoke-virtual {v6, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "u_type"

    const/16 v2, 0x9

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v6}, Lco/vine/android/VineSpanClicker;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9

    :pswitch_92
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lco/vine/android/VineSpanClicker;->onRevineBySpanClicked(J)V

    goto/16 :goto_9

    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_39
        :pswitch_12
        :pswitch_69
        :pswitch_63
        :pswitch_e
        :pswitch_a
        :pswitch_75
        :pswitch_92
        :pswitch_2f
    .end packed-switch
.end method

.method public setFlurryEventSource(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/VineSpanClicker;->mFlurryEventSource:Ljava/lang/String;

    return-void
.end method

.method public setUserId(J)V
    .registers 3

    iput-wide p1, p0, Lco/vine/android/VineSpanClicker;->mUserId:J

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/VineSpanClicker;->mFragment:Lco/vine/android/BaseFragment;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lco/vine/android/VineSpanClicker;->mFragment:Lco/vine/android/BaseFragment;

    invoke-virtual {v0, p1}, Lco/vine/android/BaseFragment;->startActivity(Landroid/content/Intent;)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lco/vine/android/VineSpanClicker;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9
.end method
