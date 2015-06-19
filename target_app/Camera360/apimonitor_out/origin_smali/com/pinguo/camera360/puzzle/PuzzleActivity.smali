.class public Lcom/pinguo/camera360/puzzle/PuzzleActivity;
.super Lcom/pinguo/camera360/base/BaseActivity;
.source "PuzzleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemListener;
.implements Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$OnPuzzleItemClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;,
        Lcom/pinguo/camera360/puzzle/PuzzleActivity$PuzzleInfo;,
        Lcom/pinguo/camera360/puzzle/PuzzleActivity$SaveRuner;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$pinguo$camera360$puzzle$PuzzlePopupLayout$ItemType:[I = null

.field public static final MSG_HIDE_PROCCESS_LAYER:I = 0x66

.field public static final MSG_JUMP_ACTIVITY:I = 0xc8

.field public static final MSG_SHOW_PROCCESS_LAYER:I = 0x65

.field public static final MSG_TIP_SAVE_FAILED_AND_CLOSE_DIALOG:I = 0x6e

.field private static final REQUEST_CODE_REPLACE_PHOTO:I = 0xa

.field public static final RESULT_CODE_REPLACE:I = 0x1

.field public static final RESULT_CODE_SAVE:I

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter;

.field private mContext:Landroid/app/Activity;

.field private mHandler:Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;

.field private mHasInit:Z

.field private mHasSwap:Z

.field private mPhotoCount:I

.field private mPhotoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/gallery/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mPopuoWindow:Lcom/pinguo/camera360/puzzle/PgPopuoWindow;

.field private mPref:Landroid/content/SharedPreferences;

.field private mProgressLayer:Landroid/view/View;

.field private mProgressLayerWithBackground:Landroid/view/View;

.field private mPuzzleData:Landroid/os/Bundle;

.field private mPuzzleSystem:Lcom/pinguo/camera360/puzzle/PuzzleSystem;

.field private mPuzzleTempId:Ljava/lang/String;

.field private mPuzzleView:Lcom/pinguo/camera360/puzzle/PuzzleSystemView;

.field private mPuzzleViewRect:Landroid/graphics/Rect;

.field private mTemplateEntity:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;

.field private mTemplateSelector:Landroid/widget/GridView;

.field private mTemplateSelectorListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mTextTitleView:Lcom/pinguo/camera360/ui/TextTitleView;


# direct methods
.method static synthetic $SWITCH_TABLE$com$pinguo$camera360$puzzle$PuzzlePopupLayout$ItemType()[I
    .registers 3

    sget-object v0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->$SWITCH_TABLE$com$pinguo$camera360$puzzle$PuzzlePopupLayout$ItemType:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;->values()[Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;->MIRROR:Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;

    invoke-virtual {v1}, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_2e

    :goto_15
    :try_start_15
    sget-object v1, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;->REPLACE:Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;

    invoke-virtual {v1}, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_2c

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;->ROTATE:Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;

    invoke-virtual {v1}, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_2a

    :goto_27
    sput-object v0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->$SWITCH_TABLE$com$pinguo$camera360$puzzle$PuzzlePopupLayout$ItemType:[I

    goto :goto_4

    :catch_2a
    move-exception v1

    goto :goto_27

    :catch_2c
    move-exception v1

    goto :goto_1e

    :catch_2e
    move-exception v1

    goto :goto_15
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseActivity;-><init>()V

    iput-boolean v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mHasInit:Z

    iput v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPhotoCount:I

    new-instance v0, Lcom/pinguo/camera360/puzzle/PuzzleActivity$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity$1;-><init>(Lcom/pinguo/camera360/puzzle/PuzzleActivity;)V

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mTemplateSelectorListener:Landroid/widget/AdapterView$OnItemClickListener;

    iput-boolean v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mHasSwap:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPuzzleViewRect:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/puzzle/PuzzleActivity;)Z
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->hidePopWindow()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/puzzle/PuzzleActivity;)Lcom/pinguo/camera360/puzzle/PuzzleSystem;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPuzzleSystem:Lcom/pinguo/camera360/puzzle/PuzzleSystem;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/puzzle/PuzzleActivity;ILcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter;)Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->getTemplate(ILcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter;)Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/puzzle/PuzzleActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPuzzleTempId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/puzzle/PuzzleActivity;)Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mTemplateEntity:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/puzzle/PuzzleActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mProgressLayerWithBackground:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/puzzle/PuzzleActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mProgressLayer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7(Lcom/pinguo/camera360/puzzle/PuzzleActivity;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPhotoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8(Lcom/pinguo/camera360/puzzle/PuzzleActivity;)Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mHandler:Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;

    return-object v0
.end method

.method static synthetic access$9(Lcom/pinguo/camera360/puzzle/PuzzleActivity;)Lcom/pinguo/camera360/puzzle/PuzzleSystemView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPuzzleView:Lcom/pinguo/camera360/puzzle/PuzzleSystemView;

    return-object v0
.end method

.method private getPhotoList(Landroid/content/Intent;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/gallery/data/Path;",
            ">;"
        }
    .end annotation

    const-string/jumbo v2, "intent_key_puzzle_array"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPhotoCount:I

    sget-object v2, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, " get path from intent : "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_20

    return-object v1

    :cond_20
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/gallery/data/Path;

    sget-object v3, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "      ------"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method private getTemplate(ILcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter;)Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;
    .registers 10

    invoke-virtual {p2, p1}, Lcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v4, "xml"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "xmlPath:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;

    invoke-direct {v1, v3}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateXMLParser;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateParser;->parse()Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;

    move-result-object v2

    sget-object v4, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private hidePopWindow()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPopuoWindow:Lcom/pinguo/camera360/puzzle/PgPopuoWindow;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPopuoWindow:Lcom/pinguo/camera360/puzzle/PgPopuoWindow;

    invoke-virtual {v1}, Lcom/pinguo/camera360/puzzle/PgPopuoWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPuzzleSystem:Lcom/pinguo/camera360/puzzle/PuzzleSystem;

    invoke-virtual {v0}, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->cancelSelectedItem()V

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPopuoWindow:Lcom/pinguo/camera360/puzzle/PgPopuoWindow;

    invoke-virtual {v0}, Lcom/pinguo/camera360/puzzle/PgPopuoWindow;->dismiss()V

    const/4 v0, 0x1

    goto :goto_5
.end method

.method private hideSwapPhotoTips(Z)V
    .registers 4

    const v0, 0x7f0a03ce

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_e

    const/4 v0, 0x4

    :goto_a
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_e
    const/16 v0, 0x8

    goto :goto_a
.end method

.method private initTemplate(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/gallery/data/Path;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->initTemplateSelector()V

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPuzzleView:Lcom/pinguo/camera360/puzzle/PuzzleSystemView;

    invoke-virtual {v2}, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->getPuzzleTemplate()Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;

    move-result-object v2

    if-nez v2, :cond_1a

    new-instance v2, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;

    invoke-direct {v2, p0}, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mTemplateEntity:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPuzzleView:Lcom/pinguo/camera360/puzzle/PuzzleSystemView;

    iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mTemplateEntity:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->setPuzzleTempalte(Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;)V

    :cond_1a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4c

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mTemplateEntity:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;

    invoke-virtual {v2, v1}, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->setPhotoPath(Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mTemplateEntity:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;

    iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mAdapter:Lcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter;

    invoke-direct {p0, v4, v3}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->getTemplate(ILcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter;)Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->setTemplate(Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;)V

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mAdapter:Lcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter;

    invoke-direct {p0, v4, v2}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->getTemplate(ILcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter;)Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPuzzleTempId:Ljava/lang/String;

    iput-object p1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPhotoList:Ljava/util/ArrayList;

    return-void

    :cond_4c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/gallery/data/Path;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/Path;->getPathId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23
.end method

.method private initTemplateSelector()V
    .registers 8

    const/16 v6, 0x3c

    iget v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPhotoCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplateIndicatorPaser;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter;

    invoke-direct {v2, p0, v0}, Lcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mAdapter:Lcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter;

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mTemplateSelector:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mAdapter:Lcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mTemplateSelector:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/pinguo/lib/util/Util;->initialize(Landroid/content/Context;)V

    const-string/jumbo v2, "Penn"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Width"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/pinguo/lib/util/Util;->dpToPixel(I)I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/pinguo/lib/util/Util;->dpToPixel(I)I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v2, v3

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mTemplateSelector:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mTemplateSelector:Landroid/widget/GridView;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mTemplateSelector:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mTemplateSelectorListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private initViews()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x4

    const v1, 0x7f0a018a

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mProgressLayerWithBackground:Landroid/view/View;

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mProgressLayerWithBackground:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a0189

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mProgressLayer:Landroid/view/View;

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mProgressLayer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a018b

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p0}, Lcom/pinguo/camera360/ui/TextTitleView;->findMeByDefault(Landroid/app/Activity;)Lcom/pinguo/camera360/ui/TextTitleView;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mTextTitleView:Lcom/pinguo/camera360/ui/TextTitleView;

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mTextTitleView:Lcom/pinguo/camera360/ui/TextTitleView;

    const v2, 0x7f0802c6

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/ui/TextTitleView;->setLeftBtnText(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mTextTitleView:Lcom/pinguo/camera360/ui/TextTitleView;

    new-instance v2, Lcom/pinguo/camera360/puzzle/PuzzleActivity$2;

    invoke-direct {v2, p0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity$2;-><init>(Lcom/pinguo/camera360/puzzle/PuzzleActivity;)V

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/ui/TextTitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TextTitleView$OnTextTitleClickListener;)V

    const v1, 0x7f0a00b2

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0802a7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mTextTitleView:Lcom/pinguo/camera360/ui/TextTitleView;

    const v2, 0x7f0802c8

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/ui/TextTitleView;->setRightBtnText(I)V

    const v1, 0x7f0a03d1

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;

    iput-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPuzzleView:Lcom/pinguo/camera360/puzzle/PuzzleSystemView;

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPuzzleView:Lcom/pinguo/camera360/puzzle/PuzzleSystemView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->getPuzzleSystem()Lcom/pinguo/camera360/puzzle/PuzzleSystem;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPuzzleSystem:Lcom/pinguo/camera360/puzzle/PuzzleSystem;

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPuzzleSystem:Lcom/pinguo/camera360/puzzle/PuzzleSystem;

    invoke-virtual {v1, p0}, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->setListener(Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemListener;)V

    const v1, 0x7f0a03d2

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mTemplateSelector:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPref:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "has_swaped"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mHasSwap:Z

    iget-boolean v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mHasSwap:Z

    if-eqz v1, :cond_8c

    invoke-direct {p0, v3}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->hideSwapPhotoTips(Z)V

    :cond_8c
    const v1, 0x7f0a03d3

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private static showPopWindow(Lcom/pinguo/camera360/puzzle/PuzzleSystemView;Lcom/pinguo/camera360/puzzle/PuzzleItem;Lcom/pinguo/camera360/puzzle/PgPopuoWindow;)V
    .registers 7

    sget-object v1, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " item.getCentreX = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->getCentreX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", popWindow.width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/pinguo/camera360/puzzle/PgPopuoWindow;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->getCentreX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Lcom/pinguo/camera360/puzzle/PgPopuoWindow;->getWidthInPix()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    const/16 v1, 0x33

    invoke-virtual {p1}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->getCentreY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2, p0, v1, v0, v2}, Lcom/pinguo/camera360/puzzle/PgPopuoWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mHandler:Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/pinguo/camera360/base/BaseActivity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10

    const/4 v3, -0x1

    if-ne p2, v3, :cond_35

    const-string/jumbo v3, "intent_key_replated_photo_path"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/gallery/data/Path;

    if-eqz v2, :cond_32

    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/data/Path;->getPathId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_39

    :goto_29
    iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPuzzleSystem:Lcom/pinguo/camera360/puzzle/PuzzleSystem;

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/data/Path;->getPathId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->replacePhoto(Ljava/lang/String;)V

    :cond_32
    invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->hidePopWindow()Z

    :cond_35
    invoke-super {p0, p1, p2, p3}, Lcom/pinguo/camera360/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_39
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/gallery/data/Path;

    iget-object v4, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPuzzleSystem:Lcom/pinguo/camera360/puzzle/PuzzleSystem;

    invoke-virtual {v4}, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->getSelectedItem()Lcom/pinguo/camera360/puzzle/PuzzleItem;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/data/Path;->getPathId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->getPhotoPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/data/Path;->getPathId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/pinguo/camera360/gallery/data/Path;->setPathId(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/data/Path;->getType()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/pinguo/camera360/gallery/data/Path;->setType(I)V

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/data/Path;->getTokenMills()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/pinguo/camera360/gallery/data/Path;->setTokenMills(J)V

    goto :goto_29
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_8

    :pswitch_7
    return-void

    :pswitch_data_8
    .packed-switch 0x7f0a00b1
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mContext:Landroid/app/Activity;

    const-string/jumbo v1, "pref_puzzle"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPref:Landroid/content/SharedPreferences;

    new-instance v1, Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;-><init>(Lcom/pinguo/camera360/puzzle/PuzzleActivity;)V

    iput-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mHandler:Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;

    const v1, 0x7f0300a3

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPuzzleData:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->getPhotoList(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->initViews()V

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->initTemplate(Ljava/util/ArrayList;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mHasInit:Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Z)V
    .registers 3

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/pinguo/camera360/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mHandler:Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mHandler:Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;

    #getter for: Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;->mActivity:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;->access$0(Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mHandler:Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;

    :cond_13
    return-void
.end method

.method public onItemClick(Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;)V
    .registers 5

    invoke-static {}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->$SWITCH_TABLE$com$pinguo$camera360$puzzle$PuzzlePopupLayout$ItemType()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$ItemType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4c

    :goto_d
    return-void

    :pswitch_e
    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPuzzleSystem:Lcom/pinguo/camera360/puzzle/PuzzleSystem;

    invoke-virtual {v1}, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->getSelectedItem()Lcom/pinguo/camera360/puzzle/PuzzleItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->rever()V

    goto :goto_d

    :pswitch_18
    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPuzzleSystem:Lcom/pinguo/camera360/puzzle/PuzzleSystem;

    invoke-virtual {v1}, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->getSelectedItem()Lcom/pinguo/camera360/puzzle/PuzzleItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->rotate()V

    goto :goto_d

    :pswitch_22
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mContext:Landroid/app/Activity;

    const-class v2, Lcom/pinguo/camera360/gallery/GalleryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "com.pinguo.camera360.gallery.pick_one_photo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "intent_key_current_photo_path_list"

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string/jumbo v1, "intent_key_start_gallery_small_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPuzzleData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_d

    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_22
        :pswitch_e
        :pswitch_18
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mHasInit:Z

    if-nez v1, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v1, 0x4

    if-ne v1, p1, :cond_f

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mTextTitleView:Lcom/pinguo/camera360/ui/TextTitleView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/TextTitleView;->performLeftButtonClick()V

    goto :goto_5

    :cond_f
    invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_5
.end method

.method public onLoadTemplateEnd(Lcom/pinguo/camera360/puzzle/PuzzleSystem;)V
    .registers 4

    const/16 v1, 0x66

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mHandler:Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mHandler:Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onLoadTemplateStart(Lcom/pinguo/camera360/puzzle/PuzzleSystem;)V
    .registers 6

    const/16 v3, 0x66

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mHandler:Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;

    invoke-virtual {v0, v3}, Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mHandler:Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mHandler:Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v3, v1, v2}, Lcom/pinguo/camera360/puzzle/PuzzleActivity$IncomingHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->getPhotoList(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_1f

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->initTemplate(Ljava/util/ArrayList;)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    invoke-direct {p0, v0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->initTemplate(Ljava/util/ArrayList;)V

    goto :goto_1e
.end method

.method protected onPause()V
    .registers 6

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPuzzleSystem:Lcom/pinguo/camera360/puzzle/PuzzleSystem;

    invoke-virtual {v3}, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->getPuzzleTemplate()Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;

    move-result-object v2

    if-eqz v2, :cond_19

    iget-object v1, v2, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->mPuzzleItemList:Ljava/util/LinkedList;

    if-eqz v1, :cond_19

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_24

    :cond_19
    invoke-super {p0}, Lcom/pinguo/camera360/base/BaseActivity;->onPause()V

    invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->unBind(Landroid/content/Context;)V

    return-void

    :cond_24
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/puzzle/PuzzleItem;

    invoke-virtual {v0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->checkBitmapPosition()V

    goto :goto_13
.end method

.method public onPuzzleItemClicked(Lcom/pinguo/camera360/puzzle/PuzzleItem;)V
    .registers 7

    const/4 v4, -0x2

    sget-object v1, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onPuzzleItemClicked : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPopuoWindow:Lcom/pinguo/camera360/puzzle/PgPopuoWindow;

    if-nez v1, :cond_2f

    new-instance v0, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout;

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout;->setOnItemClickListener(Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout$OnPuzzleItemClickListener;)V

    new-instance v1, Lcom/pinguo/camera360/puzzle/PgPopuoWindow;

    invoke-virtual {v0}, Lcom/pinguo/camera360/puzzle/PuzzlePopupLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2, v4, v4}, Lcom/pinguo/camera360/puzzle/PgPopuoWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPopuoWindow:Lcom/pinguo/camera360/puzzle/PgPopuoWindow;

    :cond_2f
    if-nez p1, :cond_35

    invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->hidePopWindow()Z

    :goto_34
    return-void

    :cond_35
    invoke-virtual {p1}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->hidePopWindow()Z

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPuzzleView:Lcom/pinguo/camera360/puzzle/PuzzleSystemView;

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPopuoWindow:Lcom/pinguo/camera360/puzzle/PgPopuoWindow;

    invoke-static {v1, p1, v2}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->showPopWindow(Lcom/pinguo/camera360/puzzle/PuzzleSystemView;Lcom/pinguo/camera360/puzzle/PuzzleItem;Lcom/pinguo/camera360/puzzle/PgPopuoWindow;)V

    goto :goto_34

    :cond_46
    invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->hidePopWindow()Z

    goto :goto_34
.end method

.method public onPuzzleItemLongClick()V
    .registers 5

    const/4 v1, 0x2

    new-array v0, v1, [J

    const/4 v1, 0x1

    const-wide/16 v2, 0x23

    aput-wide v2, v0, v1

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mContext:Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Lcom/pinguo/camera360/base/device/DeviceController;->vibrate(Landroid/content/Context;[JI)V

    invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->hidePopWindow()Z

    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    invoke-super {p0}, Lcom/pinguo/camera360/base/BaseActivity;->onResume()V

    invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->start(Landroid/content/Context;)V

    invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->bind(Landroid/content/Context;)V

    return-void
.end method

.method public onSwapPhoto()V
    .registers 4

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mHasSwap:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "has_swaped"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0, v2}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->hideSwapPhotoTips(Z)V

    iput-boolean v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mHasSwap:Z

    :cond_1a
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    const v0, 0x7f0a03d3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_5e

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPuzzleViewRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPuzzleView:Lcom/pinguo/camera360/puzzle/PuzzleSystemView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->getTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPuzzleViewRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPuzzleView:Lcom/pinguo/camera360/puzzle/PuzzleSystemView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->getLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPuzzleViewRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPuzzleView:Lcom/pinguo/camera360/puzzle/PuzzleSystemView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->getRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPuzzleViewRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPuzzleView:Lcom/pinguo/camera360/puzzle/PuzzleSystemView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/puzzle/PuzzleSystemView;->getBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPuzzleViewRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_53
    return v0

    :cond_54
    invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->hidePopWindow()Z

    move-result v0

    goto :goto_53

    :cond_59
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_53

    :cond_5e
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_53
.end method
