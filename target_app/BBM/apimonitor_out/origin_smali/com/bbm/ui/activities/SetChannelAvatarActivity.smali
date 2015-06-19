.class public Lcom/bbm/ui/activities/SetChannelAvatarActivity;
.super Lcom/bbm/ui/activities/ev;
.source "SetChannelAvatarActivity.java"


# instance fields
.field private a:Lcom/bbm/ui/FooterActionBar;

.field private b:Landroid/content/Context;

.field private c:Landroid/net/Uri;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bbm/ui/activities/afo;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/widget/ListView;

.field private f:Lcom/bbm/ui/activities/afp;

.field private g:Landroid/widget/AdapterView$OnItemClickListener;

.field private final h:Lcom/bbm/ui/cj;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-class v0, Lcom/bbm/ui/activities/NewChannelActivity;

    invoke-direct {p0, v0}, Lcom/bbm/ui/activities/ev;-><init>(Ljava/lang/Class;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->c:Landroid/net/Uri;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->d:Ljava/util/List;

    new-instance v0, Lcom/bbm/ui/activities/afm;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/afm;-><init>(Lcom/bbm/ui/activities/SetChannelAvatarActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->h:Lcom/bbm/ui/cj;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/SetChannelAvatarActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->c:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/activities/SetChannelAvatarActivity;)Lcom/bbm/ui/activities/afp;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->f:Lcom/bbm/ui/activities/afp;

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/ui/activities/SetChannelAvatarActivity;)Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->c:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/activities/SetChannelAvatarActivity;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Lcom/bbm/ui/activities/ev;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_7

    :goto_6
    return-void

    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/bbm/ui/activities/NewChannelActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-nez p1, :cond_2f

    if-eqz p3, :cond_21

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_21

    :try_start_18
    invoke-static {p0, v0}, Lcom/bbm/util/bi;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "imageUrl"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_21} :catch_2a

    :cond_21
    :goto_21
    const/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->finish()V

    goto :goto_6

    :catch_2a
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_21

    :cond_2f
    const/4 v0, 0x1

    if-ne p1, v0, :cond_21

    iget-object v0, p0, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->c:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/bbm/util/b/h;->b(Landroid/content/Context;Landroid/net/Uri;)V

    const-string v0, "imageUrl"

    iget-object v2, p0, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->c:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_21
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/ev;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->b:Landroid/content/Context;

    if-eqz p1, :cond_12

    const-string v0, "cameraFileUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->c:Landroid/net/Uri;

    :cond_12
    const v0, 0x7f03004a

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v0, 0x7f030112

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setCustomView(I)V

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a054e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0e064c

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->a:Lcom/bbm/ui/FooterActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->a:Lcom/bbm/ui/FooterActionBar;

    new-instance v1, Lcom/bbm/ui/ActionBarItem;

    const v2, 0x7f0201fb

    const v3, 0x7f0e05d0

    invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v1, v4}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->a:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v4}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->a:Lcom/bbm/ui/FooterActionBar;

    iget-object v1, p0, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->h:Lcom/bbm/ui/cj;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->d:Ljava/util/List;

    new-instance v1, Lcom/bbm/ui/activities/afo;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e05d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/bbm/ui/activities/afq;->a:Lcom/bbm/ui/activities/afq;

    invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/activities/afo;-><init>(Lcom/bbm/ui/activities/SetChannelAvatarActivity;Ljava/lang/String;Lcom/bbm/ui/activities/afq;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/bbm/ui/activities/afp;

    iget-object v1, p0, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/bbm/ui/activities/afp;-><init>(Lcom/bbm/ui/activities/SetChannelAvatarActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->f:Lcom/bbm/ui/activities/afp;

    const v0, 0x7f0a0276

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->e:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->f:Lcom/bbm/ui/activities/afp;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/bbm/ui/activities/afl;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/afl;-><init>(Lcom/bbm/ui/activities/SetChannelAvatarActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->g:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v0, p0, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->g:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/ev;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "cameraFileUri"

    iget-object v1, p0, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->c:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
