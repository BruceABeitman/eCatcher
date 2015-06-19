.class public Lcom/twidroid/widget/WidgetsContextMenu;
.super Landroid/app/ListActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final a:Ljava/lang/String; = "widget_context_menu_mode"

.field private static final b:Ljava/lang/String; = "WidgetsContextMenu"


# instance fields
.field private c:[Ljava/lang/String;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private h:Ljava/util/List;

.field private i:Lcom/twidroid/widget/m;

.field private j:J

.field private k:Lcom/twidroid/model/twitter/CommunicationEntity;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/twidroid/widget/WidgetsContextMenu;->d:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/twidroid/widget/WidgetsContextMenu;->e:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/twidroid/widget/WidgetsContextMenu;->f:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/twidroid/widget/WidgetsContextMenu;->g:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twidroid/widget/WidgetsContextMenu;->h:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/widget/WidgetsContextMenu;->l:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twidroid/widget/WidgetsContextMenu;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic a(Lcom/twidroid/widget/WidgetsContextMenu;)Lcom/twidroid/model/twitter/CommunicationEntity;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/widget/WidgetsContextMenu;->k:Lcom/twidroid/model/twitter/CommunicationEntity;

    return-object v0
.end method

.method private a()V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.SUBJECT"

    const v2, 0x7f0c00d4

    invoke-virtual {p0, v2}, Lcom/twidroid/widget/WidgetsContextMenu;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/twidroid/widget/WidgetsContextMenu;->k:Lcom/twidroid/model/twitter/CommunicationEntity;

    iget-object v3, v3, Lcom/twidroid/model/twitter/CommunicationEntity;->A:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/twidroid/widget/WidgetsContextMenu;->k:Lcom/twidroid/model/twitter/CommunicationEntity;

    invoke-virtual {v3}, Lcom/twidroid/model/twitter/CommunicationEntity;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0c00d3

    invoke-virtual {p0, v3}, Lcom/twidroid/widget/WidgetsContextMenu;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twidroid/widget/WidgetsContextMenu;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/twidroid/widget/WidgetsContextMenu;->finish()V

    return-void
.end method

.method private b()V
    .registers 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/twidroid/widget/WidgetsContextMenu$1;

    invoke-direct {v1, p0}, Lcom/twidroid/widget/WidgetsContextMenu$1;-><init>(Lcom/twidroid/widget/WidgetsContextMenu;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    return-void
.end method

.method private c()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/widget/WidgetsContextMenu;->k:Lcom/twidroid/model/twitter/CommunicationEntity;

    iget-object v0, v0, Lcom/twidroid/model/twitter/CommunicationEntity;->A:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/twidroid/d/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/widget/WidgetsContextMenu;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11

    const/4 v8, 0x3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v8}, Lcom/twidroid/widget/WidgetsContextMenu;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/twidroid/widget/WidgetsContextMenu;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_46

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "widget_context_menu_mode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    sget-object v3, Lcom/twidroid/widget/m;->a:Lcom/twidroid/widget/m;

    if-ne v0, v3, :cond_71

    sget-object v0, Lcom/twidroid/widget/m;->a:Lcom/twidroid/widget/m;

    iput-object v0, p0, Lcom/twidroid/widget/WidgetsContextMenu;->i:Lcom/twidroid/widget/m;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "EXTRA_STATUS_ID"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twidroid/widget/WidgetsContextMenu;->j:J

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "EXTRA_TWEET"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/CommunicationEntity;

    iput-object v0, p0, Lcom/twidroid/widget/WidgetsContextMenu;->k:Lcom/twidroid/model/twitter/CommunicationEntity;

    :goto_3a
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "TabName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/widget/WidgetsContextMenu;->l:Ljava/lang/String;

    :cond_46
    iget-object v0, p0, Lcom/twidroid/widget/WidgetsContextMenu;->k:Lcom/twidroid/model/twitter/CommunicationEntity;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/CommunicationEntity;->o()Lcom/twidroid/ui/StringUrlSpan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/StringUrlSpan;->b()[Landroid/text/style/URLSpan;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_52
    if-ge v3, v5, :cond_84

    aget-object v1, v4, v3

    instance-of v0, v1, Lcom/ubermedia/ui/StringSpanInfo;

    if-eqz v0, :cond_6d

    iget-object v6, p0, Lcom/twidroid/widget/WidgetsContextMenu;->h:Ljava/util/List;

    new-instance v7, Lcom/twidroid/widget/n;

    move-object v0, v1

    check-cast v0, Lcom/ubermedia/ui/StringSpanInfo;

    iget-object v0, v0, Lcom/ubermedia/ui/StringSpanInfo;->a:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, p0, v0, v1}, Lcom/twidroid/widget/n;-><init>(Lcom/twidroid/widget/WidgetsContextMenu;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6d
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_52

    :cond_71
    sget-object v0, Lcom/twidroid/widget/m;->b:Lcom/twidroid/widget/m;

    iput-object v0, p0, Lcom/twidroid/widget/WidgetsContextMenu;->i:Lcom/twidroid/widget/m;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "EXTRA_MESSAGE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/CommunicationEntity;

    iput-object v0, p0, Lcom/twidroid/widget/WidgetsContextMenu;->k:Lcom/twidroid/model/twitter/CommunicationEntity;

    goto :goto_3a

    :cond_84
    iget-object v0, p0, Lcom/twidroid/widget/WidgetsContextMenu;->i:Lcom/twidroid/widget/m;

    sget-object v1, Lcom/twidroid/widget/m;->a:Lcom/twidroid/widget/m;

    if-ne v0, v1, :cond_f6

    iget-object v0, p0, Lcom/twidroid/widget/WidgetsContextMenu;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_92
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/twidroid/widget/WidgetsContextMenu;->c:[Ljava/lang/String;

    iget-object v0, p0, Lcom/twidroid/widget/WidgetsContextMenu;->c:[Ljava/lang/String;

    const v1, 0x7f0c033a

    invoke-virtual {p0, v1}, Lcom/twidroid/widget/WidgetsContextMenu;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/twidroid/widget/WidgetsContextMenu;->c:[Ljava/lang/String;

    const/4 v1, 0x1

    const v3, 0x7f0c0145

    invoke-virtual {p0, v3}, Lcom/twidroid/widget/WidgetsContextMenu;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    iget-object v0, p0, Lcom/twidroid/widget/WidgetsContextMenu;->i:Lcom/twidroid/widget/m;

    sget-object v1, Lcom/twidroid/widget/m;->a:Lcom/twidroid/widget/m;

    if-ne v0, v1, :cond_ca

    iget-object v0, p0, Lcom/twidroid/widget/WidgetsContextMenu;->c:[Ljava/lang/String;

    const/4 v1, 0x2

    const v3, 0x7f0c00d2

    invoke-virtual {p0, v3}, Lcom/twidroid/widget/WidgetsContextMenu;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    iget-object v0, p0, Lcom/twidroid/widget/WidgetsContextMenu;->c:[Ljava/lang/String;

    const v1, 0x7f0c00f3

    invoke-virtual {p0, v1}, Lcom/twidroid/widget/WidgetsContextMenu;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    :cond_ca
    move v1, v2

    :goto_cb
    iget-object v0, p0, Lcom/twidroid/widget/WidgetsContextMenu;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_105

    iget-object v3, p0, Lcom/twidroid/widget/WidgetsContextMenu;->c:[Ljava/lang/String;

    iget-object v0, p0, Lcom/twidroid/widget/WidgetsContextMenu;->i:Lcom/twidroid/widget/m;

    sget-object v2, Lcom/twidroid/widget/m;->a:Lcom/twidroid/widget/m;

    if-ne v0, v2, :cond_ff

    add-int/lit8 v0, v1, 0x3

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    :goto_e0
    iget-object v0, p0, Lcom/twidroid/widget/WidgetsContextMenu;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/widget/n;

    invoke-virtual {v0}, Lcom/twidroid/widget/n;->a()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_cb

    :cond_f6
    iget-object v0, p0, Lcom/twidroid/widget/WidgetsContextMenu;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    goto :goto_92

    :cond_ff
    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    goto :goto_e0

    :cond_105
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/twidroid/widget/WidgetsContextMenu;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090003

    iget-object v3, p0, Lcom/twidroid/widget/WidgetsContextMenu;->c:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/twidroid/widget/WidgetsContextMenu;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/twidroid/widget/WidgetsContextMenu;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f020067

    invoke-virtual {v0, v8, v1}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    invoke-virtual {p0}, Lcom/twidroid/widget/WidgetsContextMenu;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    iget-object v0, p0, Lcom/twidroid/widget/WidgetsContextMenu;->i:Lcom/twidroid/widget/m;

    sget-object v1, Lcom/twidroid/widget/m;->a:Lcom/twidroid/widget/m;

    if-ne v0, v1, :cond_52

    packed-switch p3, :pswitch_data_a0

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/widget/WidgetsContextMenu;->h:Ljava/util/List;

    add-int/lit8 v2, p3, -0x4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/widget/n;

    invoke-virtual {v0}, Lcom/twidroid/widget/n;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_29
    invoke-virtual {p0, v1}, Lcom/twidroid/widget/WidgetsContextMenu;->startActivity(Landroid/content/Intent;)V
    :try_end_2c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_29 .. :try_end_2c} :catch_49

    :goto_2c
    invoke-virtual {p0}, Lcom/twidroid/widget/WidgetsContextMenu;->finish()V

    :goto_2f
    return-void

    :pswitch_30
    iget-object v0, p0, Lcom/twidroid/widget/WidgetsContextMenu;->k:Lcom/twidroid/model/twitter/CommunicationEntity;

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lcom/twidroid/d/a;->a(Lcom/twidroid/model/twitter/Tweet;Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Z)V

    invoke-virtual {p0}, Lcom/twidroid/widget/WidgetsContextMenu;->finish()V

    goto :goto_2f

    :pswitch_3d
    invoke-direct {p0}, Lcom/twidroid/widget/WidgetsContextMenu;->c()V

    goto :goto_2f

    :pswitch_41
    invoke-direct {p0}, Lcom/twidroid/widget/WidgetsContextMenu;->a()V

    goto :goto_2f

    :pswitch_45
    invoke-direct {p0}, Lcom/twidroid/widget/WidgetsContextMenu;->b()V

    goto :goto_2f

    :catch_49
    move-exception v0

    const-string v1, "WidgetsContextMenu"

    const-string v2, "No way to open this link"

    invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2c

    :cond_52
    packed-switch p3, :pswitch_data_ac

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/widget/WidgetsContextMenu;->h:Ljava/util/List;

    add-int/lit8 v2, p3, -0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/widget/n;

    invoke-virtual {v0}, Lcom/twidroid/widget/n;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/twidroid/widget/WidgetsContextMenu;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/twidroid/widget/WidgetsContextMenu;->finish()V

    goto :goto_2f

    :pswitch_7c
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twidroid/SingleDirectMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_MESSAGE"

    iget-object v2, p0, Lcom/twidroid/widget/WidgetsContextMenu;->k:Lcom/twidroid/model/twitter/CommunicationEntity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/twidroid/widget/WidgetsContextMenu;->l:Ljava/lang/String;

    if-eqz v1, :cond_95

    const-string v1, "TabName"

    iget-object v2, p0, Lcom/twidroid/widget/WidgetsContextMenu;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_95
    invoke-virtual {p0, v0}, Lcom/twidroid/widget/WidgetsContextMenu;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/twidroid/widget/WidgetsContextMenu;->finish()V

    goto :goto_2f

    :pswitch_9c
    invoke-direct {p0}, Lcom/twidroid/widget/WidgetsContextMenu;->c()V

    goto :goto_2f

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_30
        :pswitch_3d
        :pswitch_41
        :pswitch_45
    .end packed-switch

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_7c
        :pswitch_9c
    .end packed-switch
.end method
