.class public Lcom/bbm/ui/activities/ProfileIconSourceActivity;
.super Lcom/bbm/ui/activities/ev;
.source "ProfileIconSourceActivity.java"


# instance fields
.field protected a:Lcom/bbm/d/a;

.field private b:Landroid/content/Context;

.field private c:Lcom/bbm/ui/FooterActionBar;

.field private d:Landroid/widget/ListView;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bbm/ui/activities/acl;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/bbm/ui/activities/acm;

.field private g:Landroid/net/Uri;

.field private h:Z

.field private final i:Lcom/bbm/ui/cj;

.field private final j:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-class v0, Lcom/bbm/ui/activities/ProfileActivity;

    invoke-direct {p0, v0}, Lcom/bbm/ui/activities/ev;-><init>(Ljava/lang/Class;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->e:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->g:Landroid/net/Uri;

    new-instance v0, Lcom/bbm/ui/activities/aci;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/aci;-><init>(Lcom/bbm/ui/activities/ProfileIconSourceActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->i:Lcom/bbm/ui/cj;

    new-instance v0, Lcom/bbm/ui/activities/acj;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/acj;-><init>(Lcom/bbm/ui/activities/ProfileIconSourceActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->j:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ProfileIconSourceActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->g:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ProfileIconSourceActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/bbm/ui/activities/ProfileIconSourceActivity;)Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->g:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/activities/ProfileIconSourceActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/bbm/ui/activities/ProfileIconSourceActivity;)Lcom/bbm/ui/activities/acm;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->f:Lcom/bbm/ui/activities/acm;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/activities/ProfileIconSourceActivity;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->e:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/bbm/ui/activities/ev;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    packed-switch p1, :pswitch_data_a4

    goto :goto_7

    :pswitch_c
    if-eqz p3, :cond_14

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_3b

    :cond_14
    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->g:Landroid/net/Uri;

    :goto_16
    if-eqz v0, :cond_7

    const/4 v1, 0x4

    const/4 v2, 0x0

    :try_start_1a
    invoke-static {p0, v1, v0, v2}, Lcom/bbm/ui/el;->a(Landroid/app/Activity;ILandroid/net/Uri;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->finish()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_23} :catch_24

    goto :goto_7

    :catch_24
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e011f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_7

    :cond_3b
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_16

    :pswitch_40
    const-string v0, "file"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->a:Lcom/bbm/d/a;

    const-string v2, "image/jpeg"

    invoke-static {v0, v2}, Lcom/bbm/d/z;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/cu;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->finish()V

    goto :goto_7

    :pswitch_55
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_99

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :try_start_63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/bbm/util/bi;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->a:Lcom/bbm/d/a;

    invoke-virtual {v2}, Lcom/bbm/d/a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bbm/util/b/h;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->a:Lcom/bbm/d/a;

    const-string v2, "image/jpeg"

    invoke-static {v1, v2}, Lcom/bbm/d/z;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/cu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_99} :catch_9e

    :cond_99
    :goto_99
    invoke-virtual {p0}, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->finish()V

    goto/16 :goto_7

    :catch_9e
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_99

    nop

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_c
        :pswitch_40
        :pswitch_c
        :pswitch_55
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    const v5, 0x7f0e05d0

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/ev;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->b:Landroid/content/Context;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->a:Lcom/bbm/d/a;

    if-eqz p1, :cond_1b

    const-string v0, "cameraFileUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->g:Landroid/net/Uri;

    :cond_1b
    const v0, 0x7f03004a

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/bbm/util/fb;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->h:Z

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->getActionBar()Landroid/app/ActionBar;

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

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->c:Lcom/bbm/ui/FooterActionBar;

    iget-boolean v0, p0, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->h:Z

    if-eqz v0, :cond_c8

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->c:Lcom/bbm/ui/FooterActionBar;

    new-instance v1, Lcom/bbm/ui/ActionBarItem;

    const v2, 0x7f0201fb

    invoke-direct {v1, p0, v2, v5}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v1, v4}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    :goto_65
    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->c:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v4}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->c:Lcom/bbm/ui/FooterActionBar;

    iget-object v1, p0, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->i:Lcom/bbm/ui/cj;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->e:Ljava/util/List;

    new-instance v1, Lcom/bbm/ui/activities/acl;

    const v2, 0x7f0201f0

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e05d1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/bbm/ui/activities/acn;->a:Lcom/bbm/ui/activities/acn;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/bbm/ui/activities/acl;-><init>(Lcom/bbm/ui/activities/ProfileIconSourceActivity;ILjava/lang/String;Lcom/bbm/ui/activities/acn;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->e:Ljava/util/List;

    new-instance v1, Lcom/bbm/ui/activities/acl;

    const v2, 0x7f0201ed

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e05d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/bbm/ui/activities/acn;->b:Lcom/bbm/ui/activities/acn;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/bbm/ui/activities/acl;-><init>(Lcom/bbm/ui/activities/ProfileIconSourceActivity;ILjava/lang/String;Lcom/bbm/ui/activities/acn;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/bbm/ui/activities/acm;

    iget-object v1, p0, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/bbm/ui/activities/acm;-><init>(Lcom/bbm/ui/activities/ProfileIconSourceActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->f:Lcom/bbm/ui/activities/acm;

    const v0, 0x7f0a0276

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->d:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->f:Lcom/bbm/ui/activities/acm;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->j:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_c8
    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->c:Lcom/bbm/ui/FooterActionBar;

    new-instance v1, Lcom/bbm/ui/ActionBarItem;

    const v2, 0x7f0201fc

    const v3, -0x777778

    invoke-direct {v1, p0, v2, v5, v3}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0, v1, v4}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    goto :goto_65
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/ev;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "cameraFileUri"

    iget-object v1, p0, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->g:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
