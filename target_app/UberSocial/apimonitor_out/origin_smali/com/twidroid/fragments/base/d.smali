.class public abstract Lcom/twidroid/fragments/base/d;
.super Lcom/twidroid/fragments/base/b;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final d:Ljava/lang/String; = "BaseTweetTimelineFragment"


# instance fields
.field protected a:Lcom/twidroid/model/twitter/c;

.field protected b:Ljava/util/List;

.field protected c:Lcom/twidroid/UberSocialApplication;

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/twidroid/fragments/base/b;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twidroid/fragments/base/d;->b:Ljava/util/List;

    invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/fragments/base/d;->c:Lcom/twidroid/UberSocialApplication;

    return-void
.end method

.method static synthetic a(Lcom/twidroid/fragments/base/d;)I
    .registers 2

    iget v0, p0, Lcom/twidroid/fragments/base/d;->e:I

    return v0
.end method

.method static synthetic a(Lcom/twidroid/fragments/base/d;I)I
    .registers 2

    iput p1, p0, Lcom/twidroid/fragments/base/d;->e:I

    return p1
.end method

.method private a(Landroid/widget/ListView;I)Landroid/view/View;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a(II)V
    .registers 12

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->t()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/twidroid/fragments/base/d;->w:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->bY()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v1, v0

    :goto_32
    if-ge v1, v5, :cond_64

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3e

    :cond_3a
    :goto_3a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_32

    :cond_3e
    instance-of v6, v0, Lcom/twidroid/model/TimelineGap;

    if-nez v6, :cond_3a

    instance-of v6, v0, Lcom/twidroid/model/twitter/Tweet;

    if-eqz v6, :cond_54

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    iget-wide v6, v0, Lcom/twidroid/model/twitter/Tweet;->x:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v8, v0, Lcom/twidroid/model/twitter/Tweet;->E:Z

    goto :goto_3a

    :cond_54
    check-cast v0, Lcom/twidroid/model/twitter/DirectMessage;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/DirectMessage;->m()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v8, v0, Lcom/twidroid/model/twitter/DirectMessage;->E:Z

    goto :goto_3a

    :cond_64
    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/a/am;

    invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/twidroid/fragments/base/d;->x:Lcom/twidroid/b/a/b;

    invoke-virtual {v0, v2}, Lcom/twidroid/b/a/b;->b(Ljava/util/ArrayList;)Z

    iget-object v0, p0, Lcom/twidroid/fragments/base/d;->x:Lcom/twidroid/b/a/b;

    invoke-virtual {v0, v3}, Lcom/twidroid/b/a/b;->c(Ljava/util/ArrayList;)Z

    goto :goto_7
.end method

.method static synthetic a(Lcom/twidroid/fragments/base/d;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/twidroid/fragments/base/d;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/twidroid/fragments/base/d;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/twidroid/fragments/base/d;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/twidroid/fragments/base/d;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/twidroid/fragments/base/d;->d(I)V

    return-void
.end method

.method private d(I)V
    .registers 8

    const/4 v5, 0x1

    iget-boolean v0, p0, Lcom/twidroid/fragments/base/d;->f:Z

    if-nez v0, :cond_42

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/twidroid/fragments/base/d;->w:Lcom/twidroid/d/v;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/twidroid/fragments/base/d;->w:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->aF()I

    move-result v0

    if-le p1, v0, :cond_42

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c02ec

    invoke-virtual {p0, v1}, Lcom/twidroid/fragments/base/d;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twidroid/fragments/base/d;->w:Lcom/twidroid/d/v;

    invoke-virtual {v4}, Lcom/twidroid/d/v;->aF()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iput-boolean v5, p0, Lcom/twidroid/fragments/base/d;->f:Z

    :cond_42
    return-void
.end method


# virtual methods
.method protected a(I)V
    .registers 4

    const/4 v1, 0x0

    new-instance v0, Lcom/twidroid/fragments/base/d$2;

    invoke-direct {v0, p0}, Lcom/twidroid/fragments/base/d$2;-><init>(Lcom/twidroid/fragments/base/d;)V

    packed-switch p1, :pswitch_data_12

    :goto_9
    return-void

    :pswitch_a
    invoke-interface {v0, v1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    :pswitch_d
    invoke-interface {v0, v1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    goto :goto_9

    nop

    :pswitch_data_12
    .packed-switch 0x3002
        :pswitch_a
        :pswitch_d
    .end packed-switch
.end method

.method protected a(Lcom/twidroid/model/twitter/Tweet;)V
    .registers 6

    const v2, 0x7f0900ec

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_33

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twidroid/SingleTweetActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_STATUS_ID"

    iget-wide v2, p1, Lcom/twidroid/model/twitter/Tweet;->x:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "EXTRA_TWEET"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    :cond_33
    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/twidroid/fragments/f;

    invoke-direct {v1}, Lcom/twidroid/fragments/f;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    invoke-virtual {v1, p1}, Lcom/twidroid/fragments/f;->a(Lcom/twidroid/model/twitter/Tweet;)V

    goto :goto_9
.end method

.method public a(Lcom/twidroid/model/twitter/c;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/base/d;->a:Lcom/twidroid/model/twitter/c;

    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/twidroid/model/twitter/Tweet;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/base/d;->b(Lcom/twidroid/model/twitter/Tweet;)V

    return-void
.end method

.method protected a(Z)V
    .registers 13

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->n()Z

    move-result v0

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    move-result-object v0

    if-eqz v0, :cond_a6

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->getListView()Landroid/widget/ListView;

    move-result-object v0

    move-object v1, v0

    :goto_13
    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v1, :cond_bf

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v8

    if-eqz v0, :cond_65

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_65

    if-ltz v8, :cond_65

    :try_start_27
    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_aa

    move-result-object v0

    :goto_2b
    :try_start_2b
    invoke-static {v0}, Lcom/twidroid/d/o;->a(Ljava/lang/Object;)J

    move-result-wide v2

    check-cast v0, Lcom/twidroid/model/twitter/CommunicationEntity;

    iget-wide v4, v0, Lcom/twidroid/model/twitter/CommunicationEntity;->x:J

    iget-object v0, p0, Lcom/twidroid/fragments/base/d;->a:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v0

    int-to-long v6, v0

    invoke-direct {p0, v1, v8}, Lcom/twidroid/fragments/base/d;->a(Landroid/widget/ListView;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_16b

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    const-string v0, "BaseTweetTimelineFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "yPos = "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5c
    iget-object v0, p0, Lcom/twidroid/fragments/base/d;->x:Lcom/twidroid/b/a/b;

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v8}, Lcom/twidroid/b/a/b;->a(Ljava/lang/String;JJJI)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_65} :catch_ba

    :cond_65
    :goto_65
    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->m()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_6b

    :cond_6b
    iget-object v1, p0, Lcom/twidroid/fragments/base/d;->y:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_7f

    iget-object v1, p0, Lcom/twidroid/fragments/base/d;->c:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/b/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/twidroid/fragments/base/d;->y:Landroid/database/sqlite/SQLiteDatabase;

    :cond_7f
    iget v1, p0, Lcom/twidroid/fragments/base/d;->e:I

    if-lez v1, :cond_106

    iget v1, p0, Lcom/twidroid/fragments/base/d;->e:I

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_106

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    iget v2, p0, Lcom/twidroid/fragments/base/d;->e:I

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_c7

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TPOS::NO OBJECT FOUND!!!!!!!! Position not saved"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_a6
    const/4 v0, 0x0

    move-object v1, v0

    goto/16 :goto_13

    :catch_aa
    move-exception v2

    :try_start_ab
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_b7} :catch_ba

    move-result-object v0

    goto/16 :goto_2b

    :catch_ba
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_65

    :cond_bf
    const-string v0, "BaseTweetTimelineFragment"

    const-string v1, "P2r view was null. Skipping new save position method."

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_65

    :cond_c7
    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->m()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TPOS::Position saved for lastVisibleItemPosition "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/twidroid/fragments/base/d;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-static {v1}, Lcom/twidroid/d/o;->a(Ljava/lang/Object;)J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/twidroid/fragments/base/d;->w:Lcom/twidroid/d/v;

    iget-object v3, p0, Lcom/twidroid/fragments/base/d;->y:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1}, Lcom/twidroid/d/o;->a(Ljava/lang/Object;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/twidroid/d/v;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    :goto_101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twidroid/fragments/base/d;->A:Z

    goto/16 :goto_7

    :cond_106
    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_161

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_161

    iget-object v1, p0, Lcom/twidroid/fragments/base/d;->w:Lcom/twidroid/d/v;

    iget-object v2, p0, Lcom/twidroid/fragments/base/d;->y:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, v9}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/twidroid/d/o;->a(Ljava/lang/Object;)J

    move-result-wide v3

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/twidroid/d/v;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->m()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TPOS::Position using first object in list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/twidroid/fragments/base/d;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, v9}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/twidroid/d/o;->a(Ljava/lang/Object;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_101

    :cond_161
    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TPOS::NO OBJECT FOUND!!!!!!!! ListAdapter does not have any objects"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_101

    :cond_16b
    move v8, v9

    goto/16 :goto_5c
.end method

.method protected b(Lcom/twidroid/model/twitter/Tweet;)V
    .registers 5

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/twidroid/ui/a/am;

    if-eqz v0, :cond_6

    new-instance v0, Lcom/twidroid/c/w;

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/fragments/base/d;->u:Lcom/twidroid/net/c/a/f;

    invoke-direct {v0, v1, p1, v2}, Lcom/twidroid/c/w;-><init>(Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->i()Lcom/twidroid/ui/a/am;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/c/w;->a(Lcom/twidroid/ui/a/am;)V

    invoke-virtual {v0, p0}, Lcom/twidroid/c/w;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/twidroid/c/w;->show()V

    goto :goto_6
.end method

.method protected b(Ljava/lang/Object;)V
    .registers 3

    instance-of v0, p1, Lcom/twidroid/model/twitter/Tweet;

    if-eqz v0, :cond_9

    check-cast p1, Lcom/twidroid/model/twitter/Tweet;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/base/d;->a(Lcom/twidroid/model/twitter/Tweet;)V

    :cond_9
    return-void
.end method

.method protected c(Ljava/lang/Object;)V
    .registers 3

    instance-of v0, p1, Lcom/twidroid/model/twitter/Tweet;

    if-eqz v0, :cond_9

    check-cast p1, Lcom/twidroid/model/twitter/Tweet;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/base/d;->b(Lcom/twidroid/model/twitter/Tweet;)V

    :cond_9
    return-void
.end method

.method protected f()V
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/twidroid/fragments/base/d;->w:Lcom/twidroid/d/v;

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twidroid/d/v;->o(Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_23

    iget-object v0, p0, Lcom/twidroid/fragments/base/d;->w:Lcom/twidroid/d/v;

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/twidroid/d/v;->b(Ljava/lang/String;J)V

    :cond_23
    return-void
.end method

.method protected m()Ljava/lang/String;
    .registers 2

    const-string v0, "BaseTweetTimelineFragment"

    return-object v0
.end method

.method protected n()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected o()I
    .registers 2

    iget v0, p0, Lcom/twidroid/fragments/base/d;->e:I

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 7

    const v3, 0x7f0c01b7

    const v2, 0x7f0c01b4

    invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/base/b;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_1a

    const/4 v0, -0x1

    const/4 v1, 0x2

    invoke-interface {p1, v0, v3, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    :cond_1a
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_2c

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-interface {p1, v0, v2, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020116

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_2c
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    instance-of v0, p1, Lcom/twidroid/c/w;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/twidroid/c/w;

    iget v0, p1, Lcom/twidroid/c/w;->e:I

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/base/d;->a(I)V

    :cond_b
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0c01b7

    if-ne v2, v3, :cond_f

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->T()V

    :goto_e
    return v0

    :cond_f
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0c01b4

    if-ne v2, v3, :cond_28

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    move-result-object v2

    if-nez v2, :cond_20

    move v0, v1

    goto :goto_e

    :cond_20
    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_e

    :cond_28
    invoke-super {p0, p1}, Lcom/twidroid/fragments/base/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_e
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Lcom/twidroid/fragments/base/b;->onPause()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/base/d;->a(Z)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->f()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 7

    const v3, 0x7f0c01b7

    const v4, 0x7f0c01b4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->t()Z

    move-result v0

    if-eqz v0, :cond_30

    move v0, v1

    :goto_19
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1c
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->u()Z

    move-result v3

    if-eqz v3, :cond_32

    :goto_2c
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2f
    return-void

    :cond_30
    move v0, v2

    goto :goto_19

    :cond_32
    move v1, v2

    goto :goto_2c
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Lcom/twidroid/fragments/base/b;->onResume()V

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->G()V

    :cond_c
    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->p()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/twidroid/fragments/base/d;->w:Lcom/twidroid/d/v;

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twidroid/d/v;->o(Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_34

    iget-object v0, p0, Lcom/twidroid/fragments/base/d;->w:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->aM()Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/base/d;->b(Z)V

    :cond_34
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/base/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    move-result-object v0

    new-instance v1, Lcom/twidroid/fragments/base/d$1;

    invoke-direct {v1, p0}, Lcom/twidroid/fragments/base/d$1;-><init>(Lcom/twidroid/fragments/base/d;)V

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method protected p()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public q()V
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/twidroid/fragments/base/d;->w:Lcom/twidroid/d/v;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/twidroid/fragments/base/d;->w:Lcom/twidroid/d/v;

    invoke-virtual {v1}, Lcom/twidroid/d/v;->P()Z

    move-result v1

    if-nez v1, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->m()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/twidroid/fragments/base/d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/twidroid/fragments/base/d;->w:Lcom/twidroid/d/v;

    iget-object v3, p0, Lcom/twidroid/fragments/base/d;->y:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v3, v2}, Lcom/twidroid/d/v;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v3

    iget-object v1, p0, Lcom/twidroid/fragments/base/d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2a
    if-lez v1, :cond_74

    iget-object v5, p0, Lcom/twidroid/fragments/base/d;->b:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/twidroid/d/o;->a(Ljava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-ltz v5, :cond_6f

    :goto_3a
    if-gez v1, :cond_72

    :goto_3c
    iput v0, p0, Lcom/twidroid/fragments/base/d;->e:I

    iget-object v1, p0, Lcom/twidroid/fragments/base/d;->x:Lcom/twidroid/b/a/b;

    iget-object v3, p0, Lcom/twidroid/fragments/base/d;->a:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/twidroid/b/a/b;->a(Ljava/lang/String;J)Lcom/twidroid/fragments/base/TimelineState;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/twidroid/fragments/base/d$3;

    invoke-direct {v3, p0, v0}, Lcom/twidroid/fragments/base/d$3;-><init>(Lcom/twidroid/fragments/base/d;I)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v3, Lcom/twidroid/fragments/base/d$4;

    invoke-direct {v3, p0, v0}, Lcom/twidroid/fragments/base/d$4;-><init>(Lcom/twidroid/fragments/base/d;I)V

    const-wide/16 v4, 0xdc

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v3, Lcom/twidroid/fragments/base/d$5;

    invoke-direct {v3, p0, v0, v1}, Lcom/twidroid/fragments/base/d$5;-><init>(Lcom/twidroid/fragments/base/d;ILcom/twidroid/fragments/base/TimelineState;)V

    const-wide/16 v0, 0x154

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d

    :cond_6f
    add-int/lit8 v1, v1, -0x1

    goto :goto_2a

    :cond_72
    move v0, v1

    goto :goto_3c

    :cond_74
    move v1, v0

    goto :goto_3a
.end method

.method protected t()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected u()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected v()Z
    .registers 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/twidroid/fragments/base/d;->c:Lcom/twidroid/UberSocialApplication;

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/twidroid/UberSocialApplication;

    iput-object v0, p0, Lcom/twidroid/fragments/base/d;->c:Lcom/twidroid/UberSocialApplication;

    move v0, v1

    :goto_18
    return v0

    :cond_19
    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_21

    const/4 v0, 0x0

    goto :goto_18

    :cond_21
    move v0, v1

    goto :goto_18
.end method

.method protected w()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/base/d;->c:Lcom/twidroid/UberSocialApplication;

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/twidroid/UberSocialApplication;

    iput-object v0, p0, Lcom/twidroid/fragments/base/d;->c:Lcom/twidroid/UberSocialApplication;

    :cond_16
    return-void
.end method
