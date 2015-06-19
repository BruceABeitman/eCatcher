.class public Lcom/facebook/katana/EventsAdapter;
.super Landroid/widget/BaseAdapter;
.source "EventsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/EventsAdapter$Birthday;,
        Lcom/facebook/katana/EventsAdapter$BirthdaysQuery;,
        Lcom/facebook/katana/EventsAdapter$BucketizeItemsTask;,
        Lcom/facebook/katana/EventsAdapter$EventsQuery;,
        Lcom/facebook/katana/EventsAdapter$Item;,
        Lcom/facebook/katana/EventsAdapter$byTime;
    }
.end annotation


# instance fields
.field public mBucketizeTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/EventsAdapter$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mNumberOfTasks:I

.field private final mPhotosCache:Lcom/facebook/katana/binding/StreamPhotosCache;

.field private final mViewHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/ViewHolder",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/katana/binding/StreamPhotosCache;)V
    .registers 4

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/EventsAdapter;->mBucketizeTask:Landroid/os/AsyncTask;

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/EventsAdapter;->mNumberOfTasks:I

    iput-object p1, p0, Lcom/facebook/katana/EventsAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/katana/EventsAdapter;->mPhotosCache:Lcom/facebook/katana/binding/StreamPhotosCache;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/EventsAdapter;->mViewHolders:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/EventsAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/EventsAdapter;->mItems:Ljava/util/List;

    return-void
.end method

.method static synthetic access$0(Lcom/facebook/katana/EventsAdapter;)Ljava/util/List;
    .registers 2

    invoke-direct {p0}, Lcom/facebook/katana/EventsAdapter;->setItemsInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/facebook/katana/EventsAdapter;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/EventsAdapter;->mItems:Ljava/util/List;

    return-void
.end method

.method static synthetic access$2(Lcom/facebook/katana/EventsAdapter;)I
    .registers 2

    iget v0, p0, Lcom/facebook/katana/EventsAdapter;->mNumberOfTasks:I

    return v0
.end method

.method static synthetic access$3(Lcom/facebook/katana/EventsAdapter;I)V
    .registers 2

    iput p1, p0, Lcom/facebook/katana/EventsAdapter;->mNumberOfTasks:I

    return-void
.end method

.method private setItemsInfo()Ljava/util/List;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/EventsAdapter$Item;",
            ">;"
        }
    .end annotation

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/EventsAdapter;->mContext:Landroid/content/Context;

    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    sget-object v3, Lcom/facebook/katana/provider/EventsProvider;->EVENTS_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/facebook/katana/EventsAdapter$EventsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v19

    :goto_1f
    if-gtz v19, :cond_83

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/EventsAdapter;->mContext:Landroid/content/Context;

    move-object v3, v0

    check-cast v3, Landroid/app/Activity;

    sget-object v4, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_BIRTHDAY_CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/facebook/katana/EventsAdapter$BirthdaysQuery;->PROJECTION:[Ljava/lang/String;

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Lcom/facebook/katana/EventsAdapter$Birthday;

    move-object/from16 v18, v0

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v24, 0x0

    :goto_43
    move/from16 v0, v24

    move/from16 v1, v19

    if-lt v0, v1, :cond_d2

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    const/16 v23, 0x0

    :goto_50
    move-object/from16 v0, v18

    array-length v0, v0

    move v3, v0

    move/from16 v0, v23

    move v1, v3

    if-lt v0, v1, :cond_12d

    new-instance v3, Lcom/facebook/katana/EventsAdapter$byTime;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/facebook/katana/EventsAdapter$byTime;-><init>(Lcom/facebook/katana/EventsAdapter;)V

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    const/16 v25, 0x0

    const/16 v24, 0x0

    :goto_70
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v24

    move v1, v3

    if-lt v0, v1, :cond_186

    :goto_79
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v25

    move v1, v3

    if-lt v0, v1, :cond_1ed

    return-object v28

    :cond_83
    new-instance v2, Lcom/facebook/katana/EventsAdapter$Item;

    const/4 v3, 0x0

    const/4 v4, 0x6

    move-object/from16 v0, v20

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x4

    move-object/from16 v0, v20

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v0, v20

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    move-object/from16 v0, v20

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v10, 0x3

    move-object/from16 v0, v20

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v12, 0x5

    move-object/from16 v0, v20

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/EventsAdapter;->mContext:Landroid/content/Context;

    move-object v13, v0

    invoke-direct/range {v2 .. v13}, Lcom/facebook/katana/EventsAdapter$Item;-><init>(IJLjava/lang/String;Ljava/lang/String;JJILandroid/content/Context;)V

    invoke-virtual {v2}, Lcom/facebook/katana/EventsAdapter$Item;->getTimePeriod()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_cb

    move-object/from16 v0, v21

    move-object v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_cb
    add-int/lit8 v19, v19, -0x1

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1f

    :cond_d2
    const/4 v3, 0x3

    move-object/from16 v0, v20

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v3, 0x4

    move-object/from16 v0, v20

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v3, 0x5

    move-object/from16 v0, v20

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v3, 0x1

    sub-int v3, v6, v3

    const/4 v4, 0x0

    invoke-static {v3, v7, v4}, Lcom/facebook/katana/util/TimeUtils;->timeInSeconds(IIZ)J

    move-result-wide v9

    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, v9

    invoke-static {v3, v4}, Lcom/facebook/katana/util/TimeUtils;->getTimePeriod(J)I

    move-result v11

    const/4 v3, -0x1

    if-ne v11, v3, :cond_10b

    const/4 v3, 0x1

    sub-int v3, v6, v3

    const/4 v4, 0x1

    invoke-static {v3, v7, v4}, Lcom/facebook/katana/util/TimeUtils;->timeInSeconds(IIZ)J

    move-result-wide v9

    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, v9

    invoke-static {v3, v4}, Lcom/facebook/katana/util/TimeUtils;->getTimePeriod(J)I

    move-result v11

    :cond_10b
    new-instance v3, Lcom/facebook/katana/EventsAdapter$Birthday;

    const/4 v4, 0x2

    move-object/from16 v0, v20

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, v20

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct/range {v3 .. v11}, Lcom/facebook/katana/EventsAdapter$Birthday;-><init>(Ljava/lang/String;Ljava/lang/Long;IIIJI)V

    aput-object v3, v18, v24

    add-int/lit8 v24, v24, 0x1

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_43

    :cond_12d
    const/4 v12, 0x0

    const/16 v27, 0x0

    :goto_130
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v27

    move v1, v3

    if-lt v0, v1, :cond_162

    :goto_139
    if-nez v12, :cond_159

    new-instance v12, Lcom/facebook/katana/EventsAdapter$Item;

    const/4 v13, 0x1

    aget-object v3, v18, v23

    #getter for: Lcom/facebook/katana/EventsAdapter$Birthday;->mTimePeriod:I
    invoke-static {v3}, Lcom/facebook/katana/EventsAdapter$Birthday;->access$0(Lcom/facebook/katana/EventsAdapter$Birthday;)I

    move-result v14

    aget-object v3, v18, v23

    #getter for: Lcom/facebook/katana/EventsAdapter$Birthday;->mTime:J
    invoke-static {v3}, Lcom/facebook/katana/EventsAdapter$Birthday;->access$1(Lcom/facebook/katana/EventsAdapter$Birthday;)J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/EventsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v12 .. v17}, Lcom/facebook/katana/EventsAdapter$Item;-><init>(IIJLandroid/content/Context;)V

    move-object/from16 v0, v22

    move-object v1, v12

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_159
    aget-object v3, v18, v23

    invoke-virtual {v12, v3}, Lcom/facebook/katana/EventsAdapter$Item;->addBirthday(Lcom/facebook/katana/EventsAdapter$Birthday;)V

    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_50

    :cond_162
    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/katana/EventsAdapter$Item;

    #getter for: Lcom/facebook/katana/EventsAdapter$Item;->mTimePeriod:I
    invoke-static {v2}, Lcom/facebook/katana/EventsAdapter$Item;->access$0(Lcom/facebook/katana/EventsAdapter$Item;)I

    move-result v3

    aget-object v4, v18, v23

    #getter for: Lcom/facebook/katana/EventsAdapter$Birthday;->mTimePeriod:I
    invoke-static {v4}, Lcom/facebook/katana/EventsAdapter$Birthday;->access$0(Lcom/facebook/katana/EventsAdapter$Birthday;)I

    move-result v4

    if-ne v3, v4, :cond_183

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/facebook/katana/EventsAdapter$Item;

    goto :goto_139

    :cond_183
    add-int/lit8 v27, v27, 0x1

    goto :goto_130

    :cond_186
    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/facebook/katana/EventsAdapter$Item;

    invoke-virtual/range {v26 .. v26}, Lcom/facebook/katana/EventsAdapter$Item;->getTimePeriod()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1e5

    invoke-virtual/range {v26 .. v26}, Lcom/facebook/katana/EventsAdapter$Item;->getTimePeriod()I

    move-result v3

    if-eqz v3, :cond_1e5

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v25

    move v1, v3

    if-ge v0, v1, :cond_1e5

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/katana/EventsAdapter$Item;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/katana/EventsAdapter$Item;->getTimePeriod()I

    move-result v3

    invoke-virtual/range {v26 .. v26}, Lcom/facebook/katana/EventsAdapter$Item;->getTimePeriod()I

    move-result v4

    if-eq v3, v4, :cond_1e5

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/katana/EventsAdapter$Item;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/katana/EventsAdapter$Item;->getStartingTime()J

    move-result-wide v3

    invoke-virtual/range {v26 .. v26}, Lcom/facebook/katana/EventsAdapter$Item;->getStartingTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_1e5

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/katana/EventsAdapter$Item;

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v25, v25, 0x1

    add-int/lit8 v24, v24, -0x1

    :goto_1e1
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_70

    :cond_1e5
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e1

    :cond_1ed
    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/katana/EventsAdapter$Item;

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_79
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/EventsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/facebook/katana/EventsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 28

    move-object/from16 v13, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/EventsAdapter;->mItems:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/katana/EventsAdapter$Item;

    if-nez p2, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/EventsAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x7f03000c

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    new-instance v14, Lcom/facebook/katana/ViewHolder;

    const v18, 0x7f0b0019

    move-object v0, v14

    move-object v1, v13

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/ViewHolder;-><init>(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/EventsAdapter;->mViewHolders:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_3e
    const v18, 0x7f0b0022

    move-object v0, v13

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz p1, :cond_6a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/EventsAdapter;->mItems:Ljava/util/List;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    sub-int v19, p1, v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/katana/EventsAdapter$Item;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/EventsAdapter$Item;->getTimePeriod()I

    move-result v18

    invoke-virtual {v8}, Lcom/facebook/katana/EventsAdapter$Item;->getTimePeriod()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_114

    :cond_6a
    invoke-virtual {v8}, Lcom/facebook/katana/EventsAdapter$Item;->getBar()Ljava/lang/String;

    move-result-object v18

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v18, 0x0

    move-object v0, v3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_7c
    #getter for: Lcom/facebook/katana/EventsAdapter$Item;->mType:I
    invoke-static {v8}, Lcom/facebook/katana/EventsAdapter$Item;->access$1(Lcom/facebook/katana/EventsAdapter$Item;)I

    move-result v18

    if-nez v18, :cond_138

    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/facebook/katana/ViewHolder;

    invoke-virtual {v8}, Lcom/facebook/katana/EventsAdapter$Item;->getImageURL()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/facebook/katana/ViewHolder;->setItemId(Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/facebook/katana/EventsAdapter$Item;->getImageURL()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_12b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/EventsAdapter;->mPhotosCache:Lcom/facebook/katana/binding/StreamPhotosCache;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/EventsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual {v8}, Lcom/facebook/katana/EventsAdapter$Item;->getImageURL()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x3

    invoke-virtual/range {v18 .. v21}, Lcom/facebook/katana/binding/StreamPhotosCache;->get(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_11e

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_b9
    const v18, 0x7f0b001b

    move-object v0, v13

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/facebook/katana/EventsAdapter$Item;->getEventName()Ljava/lang/String;

    move-result-object v18

    move-object v0, v10

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/EventsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual {v8}, Lcom/facebook/katana/EventsAdapter$Item;->getTimePeriod()I

    move-result v19

    invoke-virtual {v8}, Lcom/facebook/katana/EventsAdapter$Item;->getStartingTime()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    mul-long v20, v20, v22

    invoke-static/range {v18 .. v21}, Lcom/facebook/katana/util/TimeUtils;->getTimeAsStringForTimePeriod(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v15

    const v18, 0x7f0b0023

    move-object v0, v13

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v8}, Lcom/facebook/katana/EventsAdapter$Item;->getRSVP()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_113
    return-object v13

    :cond_114
    const/16 v18, 0x8

    move-object v0, v3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7c

    :cond_11e
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const v19, 0x7f020036

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b9

    :cond_12b
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const v19, 0x7f020036

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b9

    :cond_138
    const v18, 0x7f0b001b

    move-object v0, v13

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/EventsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const/high16 v19, 0x7f09

    invoke-virtual {v8}, Lcom/facebook/katana/EventsAdapter$Item;->getBirthdaysCount()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v8}, Lcom/facebook/katana/EventsAdapter$Item;->getBirthdaysCount()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v18, 0x7f0b0023

    move-object v0, v13

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/facebook/katana/EventsAdapter$Item;->getBirthdaysList()Ljava/util/List;

    move-result-object v9

    const/4 v7, 0x0

    :goto_188
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v18

    move v0, v7

    move/from16 v1, v18

    if-ge v0, v1, :cond_198

    const/16 v18, 0x3

    move v0, v7

    move/from16 v1, v18

    if-lt v0, v1, :cond_1e4

    :cond_198
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1c3

    const-string v18, " "

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/EventsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f08003d

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c3
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v18, 0x7f0b0019

    move-object v0, v13

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v18, 0x7f0200a4

    move-object v0, v4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_113

    :cond_1e4
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/katana/EventsAdapter$Birthday;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/EventsAdapter$Birthday;->getDisplayName()Ljava/lang/String;

    move-result-object v18

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v18, 0x2

    move v0, v7

    move/from16 v1, v18

    if-eq v0, v1, :cond_20f

    add-int/lit8 v18, v7, 0x1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_20f

    const-string v18, ", "

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20f
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_188
.end method

.method public setItemsAsync()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/katana/EventsAdapter;->mBucketizeTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/facebook/katana/EventsAdapter;->mBucketizeTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_24

    :cond_e
    iget v0, p0, Lcom/facebook/katana/EventsAdapter;->mNumberOfTasks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/katana/EventsAdapter;->mNumberOfTasks:I

    new-instance v0, Lcom/facebook/katana/EventsAdapter$BucketizeItemsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/EventsAdapter$BucketizeItemsTask;-><init>(Lcom/facebook/katana/EventsAdapter;Lcom/facebook/katana/EventsAdapter$BucketizeItemsTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/EventsAdapter$BucketizeItemsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/EventsAdapter;->mBucketizeTask:Landroid/os/AsyncTask;

    :goto_23
    return-void

    :cond_24
    iget v0, p0, Lcom/facebook/katana/EventsAdapter;->mNumberOfTasks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/katana/EventsAdapter;->mNumberOfTasks:I

    goto :goto_23
.end method

.method public stopBucketizeTask()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/katana/EventsAdapter;->mBucketizeTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/facebook/katana/EventsAdapter;->mBucketizeTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_a
    return-void
.end method

.method public updatePhoto(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 7

    iget-object v2, p0, Lcom/facebook/katana/EventsAdapter;->mViewHolders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_d

    return-void

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/ViewHolder;

    invoke-virtual {v1}, Lcom/facebook/katana/ViewHolder;->getItemId()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v1, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_6
.end method
