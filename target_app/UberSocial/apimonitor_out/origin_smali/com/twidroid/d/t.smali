.class public Lcom/twidroid/d/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "ThemeHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/twidroid/UberSocialApplication;)I
    .registers 4

    const v0, 0x7f020124

    :try_start_3
    invoke-virtual {p0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/d/v;->bv()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/twidroid/ui/themes/r;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dark"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_14} :catch_1b

    move-result v1

    if-eqz v1, :cond_1a

    const v0, 0x7f020123

    :cond_1a
    :goto_1a
    return v0

    :catch_1b
    move-exception v1

    goto :goto_1a
.end method

.method public static a(Landroid/support/v7/app/ActionBar;Lcom/twidroid/ui/themes/r;Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;)V
    .registers 9

    const v4, 0x7f02012b

    invoke-virtual {p2}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->bv()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twidroid/ui/themes/r;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    :try_start_11
    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.twidroid:drawable/ic_menu_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/twidroid/ui/themes/r;->z:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/twidroid/ui/themes/r;->G()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dark"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_dark"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4d
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBar;->b(I)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_56} :catch_57

    :goto_56
    return-void

    :catch_57
    move-exception v0

    invoke-virtual {p0, v4}, Landroid/support/v7/app/ActionBar;->c(I)V

    goto :goto_56

    :cond_5c
    invoke-virtual {p0, v4}, Landroid/support/v7/app/ActionBar;->c(I)V

    goto :goto_56
.end method

.method public static a(Landroid/view/MenuItem;Lcom/twidroid/UberSocialApplication;)V
    .registers 5

    const v2, 0x7f02012d

    :try_start_3
    invoke-virtual {p1}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->bv()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twidroid/ui/themes/r;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/themes/a;

    invoke-virtual {v0}, Lcom/twidroid/ui/themes/a;->z()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :goto_1e
    return-void

    :cond_1f
    invoke-virtual {p1}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bright"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const v0, 0x7f02012d

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_35} :catch_36

    goto :goto_1e

    :catch_36
    move-exception v0

    invoke-interface {p0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1e

    :cond_3b
    const v0, 0x7f02012e

    :try_start_3e
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_36

    goto :goto_1e
.end method

.method public static a(Landroid/view/MenuItem;Ljava/lang/String;Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;)V
    .registers 8

    :try_start_0
    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.twidroid:drawable/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/d/v;->h()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bright"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_dark"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3a
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_44

    :goto_43
    return-void

    :catch_44
    move-exception v0

    const v0, 0x7f02012d

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_43
.end method

.method public static a(Landroid/widget/ImageButton;Lcom/twidroid/UberSocialApplication;)V
    .registers 3

    invoke-static {p1}, Lcom/twidroid/d/t;->a(Lcom/twidroid/UberSocialApplication;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method

.method public static a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;ILandroid/support/v7/app/ActionBar;Z)V
    .registers 5

    invoke-static {p0, p1, p3, p4}, Lcom/twidroid/d/t;->a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Z)V

    if-eqz p3, :cond_8

    invoke-virtual {p3, p2}, Landroid/support/v7/app/ActionBar;->e(I)V

    :cond_8
    return-void
.end method

.method public static a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Z)V
    .registers 5

    if-eqz p2, :cond_19

    if-eqz p3, :cond_8

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/support/v7/app/ActionBar;->c(Z)V

    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twidroid/ui/themes/r;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v7/app/ActionBar;->c(Landroid/graphics/drawable/Drawable;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_1a

    :goto_13
    const v0, 0x7f020128

    invoke-virtual {p2, v0}, Landroid/support/v7/app/ActionBar;->c(I)V

    :cond_19
    return-void

    :catch_1a
    move-exception v0

    invoke-virtual {p0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->bx()V

    invoke-virtual {p0}, Lcom/twidroid/UberSocialApplication;->c()V

    invoke-virtual {p0}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twidroid/ui/themes/r;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v7/app/ActionBar;->c(Landroid/graphics/drawable/Drawable;)V

    goto :goto_13
.end method

.method public static a(Lcom/twidroid/ui/themes/r;)Z
    .registers 9

    const v7, -0xb7b7b8

    const v6, -0xeeeeef

    const v5, -0x1e1e1f

    const v4, -0x3d3d3e

    const/high16 v3, -0x100

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/twidroid/ui/themes/r;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "newsforward"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iput v5, p0, Lcom/twidroid/ui/themes/r;->B:I

    const v1, -0x2b130f

    iput v1, p0, Lcom/twidroid/ui/themes/r;->ar:I

    iput v4, p0, Lcom/twidroid/ui/themes/r;->as:I

    iput v3, p0, Lcom/twidroid/ui/themes/r;->I:I

    iput v3, p0, Lcom/twidroid/ui/themes/r;->K:I

    const/16 v1, -0x7800

    iput v1, p0, Lcom/twidroid/ui/themes/r;->O:I

    :goto_2c
    return v0

    :cond_2d
    const-string v2, "sitter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iput v5, p0, Lcom/twidroid/ui/themes/r;->B:I

    const v1, -0x222223

    iput v1, p0, Lcom/twidroid/ui/themes/r;->ar:I

    iput v4, p0, Lcom/twidroid/ui/themes/r;->as:I

    goto :goto_2c

    :cond_3f
    const-string v2, "aplus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    iput v3, p0, Lcom/twidroid/ui/themes/r;->B:I

    const v1, -0xcecece

    iput v1, p0, Lcom/twidroid/ui/themes/r;->ar:I

    const v1, -0x868687

    iput v1, p0, Lcom/twidroid/ui/themes/r;->as:I

    iput v3, p0, Lcom/twidroid/ui/themes/r;->I:I

    goto :goto_2c

    :cond_56
    const-string v2, "burda"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    const v1, -0x1a7c78

    iput v1, p0, Lcom/twidroid/ui/themes/r;->B:I

    const v1, -0x1a7c78

    iput v1, p0, Lcom/twidroid/ui/themes/r;->ar:I

    iput v4, p0, Lcom/twidroid/ui/themes/r;->as:I

    goto :goto_2c

    :cond_6b
    const-string v2, "football"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    iput v3, p0, Lcom/twidroid/ui/themes/r;->B:I

    iput v7, p0, Lcom/twidroid/ui/themes/r;->as:I

    const v1, -0xf4dcfa

    iput v1, p0, Lcom/twidroid/ui/themes/r;->ar:I

    goto :goto_2c

    :cond_7d
    const-string v2, "mads"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8f

    iput v5, p0, Lcom/twidroid/ui/themes/r;->B:I

    const v1, -0x292b2c

    iput v1, p0, Lcom/twidroid/ui/themes/r;->ar:I

    iput v4, p0, Lcom/twidroid/ui/themes/r;->as:I

    goto :goto_2c

    :cond_8f
    const-string v2, "sherlock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    iput v3, p0, Lcom/twidroid/ui/themes/r;->B:I

    const v1, -0xd1c6bd

    iput v1, p0, Lcom/twidroid/ui/themes/r;->ar:I

    iput v6, p0, Lcom/twidroid/ui/themes/r;->as:I

    const v1, -0xb86f45

    iput v1, p0, Lcom/twidroid/ui/themes/r;->O:I

    iput v3, p0, Lcom/twidroid/ui/themes/r;->I:I

    goto :goto_2c

    :cond_a8
    const-string v2, "towerheist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bd

    iput v3, p0, Lcom/twidroid/ui/themes/r;->B:I

    const v1, -0xc9c9ca

    iput v1, p0, Lcom/twidroid/ui/themes/r;->ar:I

    iput v6, p0, Lcom/twidroid/ui/themes/r;->as:I

    iput v3, p0, Lcom/twidroid/ui/themes/r;->I:I

    goto/16 :goto_2c

    :cond_bd
    const-string v2, "uber50"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    iput v5, p0, Lcom/twidroid/ui/themes/r;->B:I

    const v1, -0x222223

    iput v1, p0, Lcom/twidroid/ui/themes/r;->ar:I

    iput v4, p0, Lcom/twidroid/ui/themes/r;->as:I

    iput v3, p0, Lcom/twidroid/ui/themes/r;->K:I

    const v1, -0x32ecfc

    iput v1, p0, Lcom/twidroid/ui/themes/r;->O:I

    goto/16 :goto_2c

    :cond_d7
    const-string v2, "uber50deluxe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    iput v3, p0, Lcom/twidroid/ui/themes/r;->B:I

    iput v6, p0, Lcom/twidroid/ui/themes/r;->ar:I

    iput v7, p0, Lcom/twidroid/ui/themes/r;->as:I

    const v1, -0x32ecfc

    iput v1, p0, Lcom/twidroid/ui/themes/r;->K:I

    const v1, -0x32ecfc

    iput v1, p0, Lcom/twidroid/ui/themes/r;->O:I

    iput v3, p0, Lcom/twidroid/ui/themes/r;->I:I

    goto/16 :goto_2c

    :cond_f3
    const-string v2, "uberwarrior"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_103

    iput v6, p0, Lcom/twidroid/ui/themes/r;->ar:I

    iput v3, p0, Lcom/twidroid/ui/themes/r;->B:I

    iput v7, p0, Lcom/twidroid/ui/themes/r;->as:I

    goto/16 :goto_2c

    :cond_103
    const-string v2, "uncleuber"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11c

    const v1, -0xff4a91

    iput v1, p0, Lcom/twidroid/ui/themes/r;->B:I

    const v1, -0xff4a91

    iput v1, p0, Lcom/twidroid/ui/themes/r;->ar:I

    const v1, 0x484848

    iput v1, p0, Lcom/twidroid/ui/themes/r;->as:I

    goto/16 :goto_2c

    :cond_11c
    const-string v2, "snow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12f

    iput v5, p0, Lcom/twidroid/ui/themes/r;->B:I

    const v1, -0x222223

    iput v1, p0, Lcom/twidroid/ui/themes/r;->ar:I

    iput v4, p0, Lcom/twidroid/ui/themes/r;->as:I

    goto/16 :goto_2c

    :cond_12f
    const/4 v0, 0x0

    goto/16 :goto_2c
.end method

.method public static a(Lcom/twidroid/ui/themes/r;Lcom/twidroid/ui/themes/c;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/twidroid/ui/themes/r;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "newsforward"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v1, "NewsForward"

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->a:Ljava/lang/String;

    const-string v1, "A mashup of the latest breaking news, investigative reports and political opinion."

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->e:Ljava/lang/String;

    :goto_15
    return v0

    :cond_16
    const-string v2, "sitter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v1, p1, Lcom/twidroid/ui/themes/c;->d:Ljava/lang/String;

    const-string v2, "channel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v1, "The Sitter"

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->a:Ljava/lang/String;

    const-string v1, "Tweets from @TheSitterMovie and from the film\'s star @JonahHill!"

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->e:Ljava/lang/String;

    goto :goto_15

    :cond_31
    const-string v1, "Need a Sitter?"

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->a:Ljava/lang/String;

    const-string v1, "Access the movie trailer and other fun content!"

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->e:Ljava/lang/String;

    goto :goto_15

    :cond_3a
    const-string v2, "aplus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    const-string v1, "A.plus"

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->a:Ljava/lang/String;

    const-string v1, "Tweets curated for you by Ashton."

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->e:Ljava/lang/String;

    goto :goto_15

    :cond_4b
    const-string v2, "burda"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    iget-object v1, p1, Lcom/twidroid/ui/themes/c;->b:Ljava/lang/String;

    const-string v2, "1993"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    const-string v1, "Bunte.de"

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->a:Ljava/lang/String;

    const-string v1, "Get the latest Tweets direct from the rich and famous."

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->e:Ljava/lang/String;

    goto :goto_15

    :cond_66
    const-string v1, "Bunte.de Official Site"

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->a:Ljava/lang/String;

    const-string v1, "Get all the news and stories of the rich and famous from Europe\'s leading people magazine, BUNTE."

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->e:Ljava/lang/String;

    goto :goto_15

    :cond_6f
    const-string v2, "football"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    iget-object v1, p1, Lcom/twidroid/ui/themes/c;->d:Ljava/lang/String;

    const-string v2, "channel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    const-string v1, "Pro Football"

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->a:Ljava/lang/String;

    const-string v1, "Get the latest news and updates from players, coaches and legends."

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->e:Ljava/lang/String;

    goto :goto_15

    :cond_8a
    iget-object v1, p1, Lcom/twidroid/ui/themes/c;->a:Ljava/lang/String;

    const-string v2, "Pro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9e

    const-string v1, "Top Tweets"

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->a:Ljava/lang/String;

    const-string v1, "Best pics and Tweets from the Pro Football Universe."

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->e:Ljava/lang/String;

    goto/16 :goto_15

    :cond_9e
    const-string v1, "End Zone Debate"

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->a:Ljava/lang/String;

    const-string v1, "Share your opinion on the hottest topics."

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->e:Ljava/lang/String;

    goto/16 :goto_15

    :cond_a8
    const-string v2, "mads"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    iget-object v1, p1, Lcom/twidroid/ui/themes/c;->b:Ljava/lang/String;

    const-string v2, "1994"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c4

    const-string v1, "Les Mads"

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->a:Ljava/lang/String;

    const-string v1, "Stay up to date on the latest fashion news."

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->e:Ljava/lang/String;

    goto/16 :goto_15

    :cond_c4
    const-string v1, "Les Mads Official Website"

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->a:Ljava/lang/String;

    const-string v1, "Everything about fashion, lifestyle, shopping and beauty - brought to zou bz Germany\'s biggest fashion blog."

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->e:Ljava/lang/String;

    goto/16 :goto_15

    :cond_ce
    const-string v2, "sherlock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    iget-object v1, p1, Lcom/twidroid/ui/themes/c;->d:Ljava/lang/String;

    const-string v2, "channel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ea

    const-string v1, "Sherlock Holmes: A Game of Shadows"

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->a:Ljava/lang/String;

    const-string v1, "Tweets from the makers of Sherlock Holmes: A Game of Shadows."

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->e:Ljava/lang/String;

    goto/16 :goto_15

    :cond_ea
    const-string v1, "Sherlock Holmes 2 Official Site"

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->a:Ljava/lang/String;

    const-string v1, "Access film trailers, photos and more!"

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->e:Ljava/lang/String;

    goto/16 :goto_15

    :cond_f4
    const-string v2, "towerheist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11a

    iget-object v1, p1, Lcom/twidroid/ui/themes/c;->d:Ljava/lang/String;

    const-string v2, "channel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_110

    const-string v1, "Tower Heist Takeover"

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->a:Ljava/lang/String;

    const-string v1, "Watch trailers, get ringtones, and Tweet Tower Heist from UberSocial!"

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->e:Ljava/lang/String;

    goto/16 :goto_15

    :cond_110
    const-string v1, "Tower Heist Official Site"

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->a:Ljava/lang/String;

    const-string v1, "Access to the trailer, movie still, ringtones and more."

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->e:Ljava/lang/String;

    goto/16 :goto_15

    :cond_11a
    const-string v2, "uber50"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_140

    iget-object v1, p1, Lcom/twidroid/ui/themes/c;->d:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_136

    const-string v1, "G-Unit Media Portal"

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->a:Ljava/lang/String;

    const-string v1, "Make sure you\'re the first of your friends to get the latest G-Unit news and videos."

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->e:Ljava/lang/String;

    goto/16 :goto_15

    :cond_136
    const-string v1, "G-Unit Twitter List"

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->a:Ljava/lang/String;

    const-string v1, "Get super fast access to the G-Unit Twitter List."

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->e:Ljava/lang/String;

    goto/16 :goto_15

    :cond_140
    const-string v2, "uber50deluxe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17a

    iget-object v1, p1, Lcom/twidroid/ui/themes/c;->d:Ljava/lang/String;

    const-string v2, "list"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15c

    const-string v1, "G-Unit Twitter List"

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->a:Ljava/lang/String;

    const-string v1, "Get super fast access to the G-Unit Twitter List."

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->e:Ljava/lang/String;

    goto/16 :goto_15

    :cond_15c
    iget-object v1, p1, Lcom/twidroid/ui/themes/c;->a:Ljava/lang/String;

    const-string v2, "Media"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_170

    const-string v1, "G-Unit Media Portal"

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->a:Ljava/lang/String;

    const-string v1, "Make sure you\'re the first of your friends to get the latest G-Unit news and videos."

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->e:Ljava/lang/String;

    goto/16 :goto_15

    :cond_170
    const-string v1, "Uber50 Deluxe Extras"

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->a:Ljava/lang/String;

    const-string v1, "Exclusive artwork that you can use for your mobile device."

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->e:Ljava/lang/String;

    goto/16 :goto_15

    :cond_17a
    const-string v2, "uberwarrior"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18c

    const-string v1, "UberWarrior"

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->a:Ljava/lang/String;

    const-string v1, "MMA News and updates from fans and top fighters."

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->e:Ljava/lang/String;

    goto/16 :goto_15

    :cond_18c
    const-string v2, "uncleuber"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b2

    iget-object v1, p1, Lcom/twidroid/ui/themes/c;->b:Ljava/lang/String;

    const-string v2, "1483"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a8

    const-string v1, "#Talk2Russell"

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->a:Ljava/lang/String;

    const-string v1, "Interact directly with UncleUber\'s \"Topic of the Day\" and let  Russell know exactly what\'s on your mind."

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->e:Ljava/lang/String;

    goto/16 :goto_15

    :cond_1a8
    const-string v1, "Global Grind"

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->a:Ljava/lang/String;

    const-string v1, "Russell shares all of the existing happenings in entertainment, music, style and news from his hip-hop website GlobalGrind.com"

    iput-object v1, p1, Lcom/twidroid/ui/themes/c;->e:Ljava/lang/String;

    goto/16 :goto_15

    :cond_1b2
    const/4 v0, 0x0

    goto/16 :goto_15
.end method

.method public static b(Lcom/twidroid/UberSocialApplication;)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->bv()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/twidroid/ui/themes/s;->o:[Lcom/twidroid/ui/themes/n;

    array-length v4, v3

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v4, :cond_23

    aget-object v5, v3, v0

    invoke-virtual {v5}, Lcom/twidroid/ui/themes/n;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-virtual {v5}, Lcom/twidroid/ui/themes/n;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1f
    return-object v0

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_23
    if-nez v1, :cond_4c

    invoke-virtual {p0}, Lcom/twidroid/UberSocialApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/twidroid/ui/themes/m;->a(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/themes/n;

    invoke-virtual {v0}, Lcom/twidroid/ui/themes/n;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-virtual {v0}, Lcom/twidroid/ui/themes/n;->b()Ljava/lang/String;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4a} :catch_4e

    move-result-object v0

    goto :goto_1f

    :cond_4c
    move-object v0, v1

    goto :goto_1f

    :catch_4e
    move-exception v0

    const-string v2, "ThemeHelper"

    const-string v3, "error getting themes"

    invoke-static {v2, v3, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1f
.end method
