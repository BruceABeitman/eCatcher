.class public final Lcom/spotify/mobile/android/ui/menus/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z


# direct methods
.method public static a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;)V
    .registers 6

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/spotify/mobile/android/ui/menus/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    const v0, 0x7f0a01cb

    const v1, 0x7f0f02a6

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/ui/menus/e$13;

    invoke-direct {v1, p0, p2}, Lcom/spotify/mobile/android/ui/menus/e$13;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_7
.end method

.method private static a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;IILcom/spotify/mobile/android/util/ClientEvent$Event;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/spotify/mobile/android/ui/menus/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    invoke-interface {p1, v1, p3, v1, p4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    new-instance v0, Lcom/spotify/mobile/android/ui/menus/e$15;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/menus/e$15;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent$Event;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_7
.end method

.method public static a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;II)V
    .registers 10

    const v2, 0x7f0a01cd

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/spotify/mobile/android/ui/menus/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-static {p5, p6}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->b(II)Z

    move-result v0

    if-eqz v0, :cond_21

    const v0, 0x7f0f02b4

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/ui/menus/e$1;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/spotify/mobile/android/ui/menus/e$1;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_a

    :cond_21
    invoke-static {p5}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->c(I)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-static {p5, p6}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->a(II)Z

    move-result v0

    if-eqz v0, :cond_3d

    :cond_2d
    const v0, 0x7f0f02a5

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/ui/menus/e$11;

    invoke-direct {v1, p0, p2, p3}, Lcom/spotify/mobile/android/ui/menus/e$11;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_a

    :cond_3d
    invoke-static {p5}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->a(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f0f02a9

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/ui/menus/e$12;

    invoke-direct {v1, p0, p2, p3}, Lcom/spotify/mobile/android/ui/menus/e$12;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_a
.end method

.method public static a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/Collection$State;ZLjava/lang/String;)V
    .registers 10

    const v3, 0x7f0a01c7

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/spotify/mobile/android/ui/menus/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_a
    return-void

    :cond_b
    new-instance v0, Lcom/spotify/mobile/android/util/SpotifyLink;

    invoke-direct {v0, p5}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    move-result-object v0

    sget-object v2, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->d:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    if-eq v0, v2, :cond_1c

    sget-object v2, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->s:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    if-ne v0, v2, :cond_3e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    const-string v2, "uri is not an album."

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V

    sget-object v0, Lcom/spotify/mobile/android/ui/menus/e$10;->a:[I

    invoke-virtual {p3}, Lcom/spotify/mobile/android/util/Collection$State;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_68

    goto :goto_a

    :pswitch_2e
    const v0, 0x7f0f02a1

    invoke-interface {p1, v1, v3, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/ui/menus/e$4;

    invoke-direct {v1, p0, p2, p5}, Lcom/spotify/mobile/android/ui/menus/e$4;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_a

    :cond_3e
    move v0, v1

    goto :goto_1d

    :pswitch_40
    sget-object v0, Lcom/spotify/mobile/android/util/Collection$State;->b:Lcom/spotify/mobile/android/util/Collection$State;

    if-ne p3, v0, :cond_55

    if-eqz p4, :cond_55

    const v0, 0x7f0f02a8

    invoke-interface {p1, v1, v3, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v2, Lcom/spotify/mobile/android/ui/menus/e$5;

    invoke-direct {v2, p0, p2, p5}, Lcom/spotify/mobile/android/ui/menus/e$5;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_55
    const v0, 0x7f0a01d1

    const v2, 0x7f0f02af

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/ui/menus/e$6;

    invoke-direct {v1, p0, p2, p5}, Lcom/spotify/mobile/android/ui/menus/e$6;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_a

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_40
        :pswitch_40
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
    .registers 7

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/spotify/mobile/android/ui/menus/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    const v0, 0x7f0a01d2

    const v1, 0x7f0f02b0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/ui/menus/e$17;

    invoke-direct {v1, p0, p2, p3}, Lcom/spotify/mobile/android/ui/menus/e$17;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_7
.end method

.method public static a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    invoke-static {p0}, Lcom/spotify/mobile/android/ui/menus/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    const v3, 0x7f0a01c9

    const v4, 0x7f0f02a3

    sget-object v5, Lcom/spotify/mobile/android/util/ClientEvent$Event;->s:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/spotify/mobile/android/ui/menus/e;->a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;IILcom/spotify/mobile/android/util/ClientEvent$Event;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;Z)V
    .registers 8

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/spotify/mobile/android/ui/menus/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    if-eqz p4, :cond_1d

    const v0, 0x7f0f02b6

    :goto_d
    const v1, 0x7f0a01d4

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/ui/menus/e$14;

    invoke-direct {v1, p0, p2, p4, p3}, Lcom/spotify/mobile/android/ui/menus/e$14;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_7

    :cond_1d
    const v0, 0x7f0f02b2

    goto :goto_d
.end method

.method static synthetic a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent$Event;)V
    .registers 5

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->G:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v0, p2, v1}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    invoke-static {p0, p1, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x1

    if-nez p0, :cond_f

    sget-boolean v1, Lcom/spotify/mobile/android/ui/menus/e;->a:Z

    if-nez v1, :cond_e

    const-string v1, "OptionsMenuHelper.* called with a null context"

    invoke-static {v1}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V

    sput-boolean v0, Lcom/spotify/mobile/android/ui/menus/e;->a:Z

    :cond_e
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static b(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
    .registers 7

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/spotify/mobile/android/ui/menus/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    const v0, 0x7f0a01d0

    const v1, 0x7f0f02ae

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/ui/menus/e$18;

    invoke-direct {v1, p0, p2, p3}, Lcom/spotify/mobile/android/ui/menus/e$18;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_7
.end method

.method public static b(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    invoke-static {p0}, Lcom/spotify/mobile/android/ui/menus/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    const v3, 0x7f0a01ca

    const v4, 0x7f0f02a4

    sget-object v5, Lcom/spotify/mobile/android/util/ClientEvent$Event;->t:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/spotify/mobile/android/ui/menus/e;->a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;IILcom/spotify/mobile/android/util/ClientEvent$Event;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static b(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;Z)V
    .registers 8

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/spotify/mobile/android/ui/menus/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    if-eqz p4, :cond_1d

    const v0, 0x7f0f02b3

    :goto_d
    const v1, 0x7f0a01d4

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/ui/menus/e$2;

    invoke-direct {v1, p0, p2, p4, p3}, Lcom/spotify/mobile/android/ui/menus/e$2;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_7

    :cond_1d
    const v0, 0x7f0f02a7

    goto :goto_d
.end method

.method public static c(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
    .registers 7

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/spotify/mobile/android/ui/menus/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    const v0, 0x7f0a01d3

    const v1, 0x7f0f02b1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/ui/menus/e$8;

    invoke-direct {v1, p0, p2, p3}, Lcom/spotify/mobile/android/ui/menus/e$8;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_7
.end method

.method public static c(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/spotify/mobile/android/ui/menus/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    const v0, 0x7f0a01c8

    const v1, 0x7f0f02a2

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/ui/menus/e$16;

    invoke-direct {v1, p0, p2, p4, p3}, Lcom/spotify/mobile/android/ui/menus/e$16;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_7
.end method

.method public static c(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;Z)V
    .registers 8

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/spotify/mobile/android/ui/menus/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    if-eqz p4, :cond_1d

    const v0, 0x7f0f02b5

    :goto_d
    const v1, 0x7f0a01cf

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/ui/menus/e$3;

    invoke-direct {v1, p0, p2, p4, p3}, Lcom/spotify/mobile/android/ui/menus/e$3;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_7

    :cond_1d
    const v0, 0x7f0f02ad

    goto :goto_d
.end method

.method public static d(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
    .registers 7

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/spotify/mobile/android/ui/menus/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    const v0, 0x7f0a01ce

    const v1, 0x7f0f02aa

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/ui/menus/e$9;

    invoke-direct {v1, p0, p2, p3}, Lcom/spotify/mobile/android/ui/menus/e$9;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_7
.end method

.method public static d(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;Z)V
    .registers 8

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/spotify/mobile/android/ui/menus/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    if-eqz p4, :cond_1d

    const v0, 0x7f0f02ac

    :goto_d
    const v1, 0x7f0a01cf

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/ui/menus/e$7;

    invoke-direct {v1, p0, p2, p4, p3}, Lcom/spotify/mobile/android/ui/menus/e$7;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_7

    :cond_1d
    const v0, 0x7f0f02ab

    goto :goto_d
.end method
