.class public Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "FriendAdapter.java"


# instance fields
.field private child:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/weibo/sdk/android/model/Firend;",
            ">;>;"
        }
    .end annotation
.end field

.field private ctx:Landroid/content/Context;

.field private group:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/weibo/sdk/android/model/Firend;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->group:Ljava/util/List;

    iput-object p3, p0, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->child:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->ctx:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->child:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChild()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/weibo/sdk/android/model/Firend;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->child:Ljava/util/Map;

    return-object v0
.end method

.method public getChildId(II)J
    .registers 5

    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 19

    if-nez p4, :cond_100

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v3, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v5, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v9, 0x10

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v9, 0xf

    const/4 v10, 0x0

    const/16 v11, 0xa

    const/4 v12, 0x0

    invoke-virtual {v3, v9, v10, v11, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const-string/jumbo v9, "childbg_"

    iget-object v10, p0, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->ctx:Landroid/content/Context;

    invoke-static {v9, v10}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v1, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/16 v9, 0x1196

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setId(I)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v10, 0x2d

    const/16 v11, 0x2d

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v9, "logo"

    iget-object v10, p0, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->ctx:Landroid/content/Context;

    invoke-static {v9, v10}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v4, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v9, 0xa

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v4, v9, v10, v11, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v9, 0x10

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v7, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x4190

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v9, 0x1194

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setId(I)V

    const-string/jumbo v9, "#32769b"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v9, 0x4140

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v9, 0x1195

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setId(I)V

    const-string/jumbo v9, "#a6c6d5"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, p1, p2}, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tencent/weibo/sdk/android/model/Firend;

    invoke-virtual {v9}, Lcom/tencent/weibo/sdk/android/model/Firend;->getNick()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1, p2}, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tencent/weibo/sdk/android/model/Firend;

    invoke-virtual {v9}, Lcom/tencent/weibo/sdk/android/model/Firend;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string/jumbo v9, "childbg_"

    iget-object v10, p0, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->ctx:Landroid/content/Context;

    invoke-static {v9, v10}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 p4, v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_d9
    move-object/from16 v6, p4

    invoke-virtual {p0, p1, p2}, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tencent/weibo/sdk/android/model/Firend;

    invoke-virtual {v9}, Lcom/tencent/weibo/sdk/android/model/Firend;->getHeadurl()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_14b

    new-instance v10, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter$1;

    invoke-direct {v10, p0, p1, p2, v6}, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter$1;-><init>(Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;IILandroid/view/View;)V

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tencent/weibo/sdk/android/model/Firend;

    invoke-virtual {v9}, Lcom/tencent/weibo/sdk/android/model/Firend;->getHeadurl()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v11, v12

    invoke-virtual {v10, v11}, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_ff
    return-object p4

    :cond_100
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const/16 v9, 0x1194

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/16 v9, 0x1195

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    const/16 v10, 0x1196

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const-string/jumbo v9, "logo"

    iget-object v10, p0, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->ctx:Landroid/content/Context;

    invoke-static {v9, v10}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1, p2}, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tencent/weibo/sdk/android/model/Firend;

    invoke-virtual {v9}, Lcom/tencent/weibo/sdk/android/model/Firend;->getNick()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1, p2}, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tencent/weibo/sdk/android/model/Firend;

    invoke-virtual {v9}, Lcom/tencent/weibo/sdk/android/model/Firend;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d9

    :cond_14b
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    const/16 v10, 0x1196

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const-string/jumbo v9, "logo"

    iget-object v10, p0, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->ctx:Landroid/content/Context;

    invoke-static {v9, v10}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_ff
.end method

.method public getChildrenCount(I)I
    .registers 4

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->child:Ljava/util/Map;

    iget-object v1, p0, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->group:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->group:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroup()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->group:Ljava/util/List;

    return-object v0
.end method

.method public getGroupCount()I
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->group:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    const/4 v3, 0x0

    if-nez p3, :cond_53

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x1e

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v2, 0x4190

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setWidth(I)V

    invoke-virtual {p0, p1}, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string/jumbo v2, "groupbg_"

    iget-object v3, p0, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->ctx:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object p3, v0

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_52
    return-object p3

    :cond_53
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_52
.end method

.method public hasStableIds()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method

.method public setChild(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/weibo/sdk/android/model/Firend;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->child:Ljava/util/Map;

    return-void
.end method

.method public setGroup(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->group:Ljava/util/List;

    return-void
.end method
