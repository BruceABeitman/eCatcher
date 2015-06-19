.class public Lcom/twidroid/ui/c/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field public static final A:Ljava/lang/String; = "TAB_PUBLICTIMELINE"

.field public static final B:Ljava/lang/String; = "outbox"

.field public static final C:Ljava/lang/String; = "SELECTED_CHANNEL"

.field public static final D:Ljava/lang/String; = "TAB_INNER_CIRCLE"

.field public static final E:Ljava/lang/String; = "TAB_VIDEO_STREAM"

.field private static final F:Ljava/lang/String; = "SlideMenuSettings"

.field private static final I:Z = false

.field private static L:Ljava/util/Map; = null

.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x6

.field public static final g:I = 0x7

.field public static final h:I = 0x8

.field public static final i:I = 0x9

.field public static final j:I = 0xb

.field public static final k:I = 0xc

.field public static final l:I = 0xd

.field public static final m:I = 0xf

.field public static final n:I = 0x11

.field public static final o:I = 0x12

.field public static final p:I = 0x13

.field public static final q:Ljava/lang/String; = "TAB_TIMELINE"

.field public static final r:Ljava/lang/String; = "TAB_FB_TIMELINE"

.field public static final s:Ljava/lang/String; = "TAB_SEARCH"

.field public static final t:Ljava/lang/String; = "TAB_DIRECT_MESSAGES"

.field public static final u:Ljava/lang/String; = "TAB_SEARCH_NEARBY"

.field public static final v:Ljava/lang/String; = "TAB_MENTIONS"

.field public static final w:Ljava/lang/String; = "TAB_RETWEETS"

.field public static final x:Ljava/lang/String; = "TAB_FAVORITES"

.field public static final y:Ljava/lang/String; = "TAB_TRENDINGTOPICS"

.field public static final z:Ljava/lang/String; = "TAB_LISTMANAGER"


# instance fields
.field private G:Lcom/twidroid/UberSocialApplication;

.field private H:Landroid/content/Context;

.field private J:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private K:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twidroid/UberSocialApplication;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p2, p0, Lcom/twidroid/ui/c/g;->G:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/ui/c/g;->H:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/twidroid/ui/c/g;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/twidroid/ui/c/g;->c(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/twidroid/ui/c/g;->e()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lcom/twidroid/ui/c/g;->a()V

    invoke-virtual {p0}, Lcom/twidroid/ui/c/g;->c()V

    :cond_24
    return-void
.end method

.method private b(I)Lcom/twidroid/ui/c/h;
    .registers 6

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_2cc

    :pswitch_4
    const/4 v0, 0x0

    :goto_5
    return-object v0

    :pswitch_6
    new-instance v1, Lcom/twidroid/ui/c/c;

    new-instance v0, Lcom/twidroid/fragments/e/g;

    iget-object v2, p0, Lcom/twidroid/ui/c/g;->G:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/twidroid/fragments/e/g;-><init>(Lcom/twidroid/model/twitter/c;)V

    const-string v2, "SELECTED_CHANNEL"

    invoke-direct {v1, v0, v2}, Lcom/twidroid/ui/c/c;-><init>(Lcom/twidroid/fragments/base/o;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->K:Ljava/util/Map;

    const-string v2, "TAB_TIMELINE"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/c/h;->a(Landroid/graphics/drawable/Drawable;)Lcom/twidroid/ui/c/h;

    const-string v0, "Selected Channel"

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/c/h;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/twidroid/ui/c/h;->a(Z)V

    invoke-virtual {v1, p1}, Lcom/twidroid/ui/c/h;->b(I)V

    move-object v0, v1

    goto :goto_5

    :pswitch_36
    new-instance v1, Lcom/twidroid/ui/c/c;

    new-instance v0, Lcom/twidroid/fragments/e/a;

    invoke-direct {v0}, Lcom/twidroid/fragments/e/a;-><init>()V

    const-string v2, "TAB_DIRECT_MESSAGES"

    invoke-direct {v1, v0, v2}, Lcom/twidroid/ui/c/c;-><init>(Lcom/twidroid/fragments/base/o;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->K:Ljava/util/Map;

    const-string v2, "TAB_DIRECT_MESSAGES"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/c/h;->a(Landroid/graphics/drawable/Drawable;)Lcom/twidroid/ui/c/h;

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->G:Lcom/twidroid/UberSocialApplication;

    const v2, 0x7f0c001d

    invoke-virtual {v0, v2}, Lcom/twidroid/UberSocialApplication;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/c/h;->b(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/twidroid/ui/c/h;->b(I)V

    move-object v0, v1

    goto :goto_5

    :pswitch_64
    new-instance v1, Lcom/twidroid/ui/c/c;

    new-instance v0, Lcom/twidroid/fragments/e/c;

    iget-object v2, p0, Lcom/twidroid/ui/c/g;->G:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/twidroid/fragments/e/c;-><init>(Lcom/twidroid/model/twitter/c;)V

    const-string v2, "TAB_FAVORITES"

    invoke-direct {v1, v0, v2}, Lcom/twidroid/ui/c/c;-><init>(Lcom/twidroid/fragments/base/o;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->K:Ljava/util/Map;

    const-string v2, "TAB_FAVORITES"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/c/h;->a(Landroid/graphics/drawable/Drawable;)Lcom/twidroid/ui/c/h;

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->G:Lcom/twidroid/UberSocialApplication;

    const v2, 0x7f0c001e

    invoke-virtual {v0, v2}, Lcom/twidroid/UberSocialApplication;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/c/h;->b(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/twidroid/ui/c/h;->b(I)V

    move-object v0, v1

    goto/16 :goto_5

    :pswitch_9d
    new-instance v1, Lcom/twidroid/ui/c/c;

    new-instance v0, Lcom/twidroid/fragments/e/n;

    iget-object v2, p0, Lcom/twidroid/ui/c/g;->G:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/twidroid/fragments/e/n;-><init>(Lcom/twidroid/model/twitter/c;)V

    const-string v2, "TAB_LISTMANAGER"

    invoke-direct {v1, v0, v2}, Lcom/twidroid/ui/c/c;-><init>(Lcom/twidroid/fragments/base/o;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->K:Ljava/util/Map;

    const-string v2, "TAB_LISTMANAGER"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/c/h;->a(Landroid/graphics/drawable/Drawable;)Lcom/twidroid/ui/c/h;

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->G:Lcom/twidroid/UberSocialApplication;

    const v2, 0x7f0c01b5

    invoke-virtual {v0, v2}, Lcom/twidroid/UberSocialApplication;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/c/h;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/twidroid/ui/c/h;->b(Z)V

    invoke-virtual {v1, p1}, Lcom/twidroid/ui/c/h;->b(I)V

    move-object v0, v1

    goto/16 :goto_5

    :pswitch_d9
    new-instance v1, Lcom/twidroid/ui/c/c;

    new-instance v0, Lcom/twidroid/fragments/e/r;

    iget-object v2, p0, Lcom/twidroid/ui/c/g;->G:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/twidroid/fragments/e/r;-><init>(Lcom/twidroid/model/twitter/c;)V

    const-string v2, "TAB_MENTIONS"

    invoke-direct {v1, v0, v2}, Lcom/twidroid/ui/c/c;-><init>(Lcom/twidroid/fragments/base/o;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->K:Ljava/util/Map;

    const-string v2, "TAB_MENTIONS"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/c/h;->a(Landroid/graphics/drawable/Drawable;)Lcom/twidroid/ui/c/h;

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->G:Lcom/twidroid/UberSocialApplication;

    const v2, 0x7f0c001f

    invoke-virtual {v0, v2}, Lcom/twidroid/UberSocialApplication;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/c/h;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/twidroid/ui/c/h;->a(Z)V

    invoke-virtual {v1, p1}, Lcom/twidroid/ui/c/h;->b(I)V

    move-object v0, v1

    goto/16 :goto_5

    :pswitch_115
    new-instance v1, Lcom/twidroid/ui/c/c;

    new-instance v0, Lcom/twidroid/fragments/e/x;

    iget-object v2, p0, Lcom/twidroid/ui/c/g;->G:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/twidroid/fragments/e/x;-><init>(Lcom/twidroid/model/twitter/c;)V

    const-string v2, "TAB_RETWEETS"

    invoke-direct {v1, v0, v2}, Lcom/twidroid/ui/c/c;-><init>(Lcom/twidroid/fragments/base/o;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->K:Ljava/util/Map;

    const-string v2, "TAB_RETWEETS"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/c/h;->a(Landroid/graphics/drawable/Drawable;)Lcom/twidroid/ui/c/h;

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->G:Lcom/twidroid/UberSocialApplication;

    const v2, 0x7f0c01d0

    invoke-virtual {v0, v2}, Lcom/twidroid/UberSocialApplication;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/c/h;->b(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/twidroid/ui/c/h;->b(I)V

    move-object v0, v1

    goto/16 :goto_5

    :pswitch_14e
    new-instance v1, Lcom/twidroid/ui/c/c;

    new-instance v0, Lcom/twidroid/fragments/e/ab;

    iget-object v2, p0, Lcom/twidroid/ui/c/g;->G:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/twidroid/fragments/e/ab;-><init>(Lcom/twidroid/model/twitter/c;)V

    const-string v2, "TAB_SEARCH"

    invoke-direct {v1, v0, v2}, Lcom/twidroid/ui/c/c;-><init>(Lcom/twidroid/fragments/base/o;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->K:Ljava/util/Map;

    const-string v2, "TAB_SEARCH"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/c/h;->a(Landroid/graphics/drawable/Drawable;)Lcom/twidroid/ui/c/h;

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->G:Lcom/twidroid/UberSocialApplication;

    const v2, 0x7f0c02ef

    invoke-virtual {v0, v2}, Lcom/twidroid/UberSocialApplication;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/c/h;->b(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/twidroid/ui/c/h;->b(I)V

    move-object v0, v1

    goto/16 :goto_5

    :pswitch_187
    new-instance v1, Lcom/twidroid/ui/c/c;

    new-instance v0, Lcom/twidroid/fragments/e/t;

    iget-object v2, p0, Lcom/twidroid/ui/c/g;->G:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/twidroid/fragments/e/t;-><init>(Lcom/twidroid/model/twitter/c;)V

    const-string v2, "TAB_SEARCH_NEARBY"

    invoke-direct {v1, v0, v2}, Lcom/twidroid/ui/c/c;-><init>(Lcom/twidroid/fragments/base/o;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->K:Ljava/util/Map;

    const-string v2, "TAB_SEARCH_NEARBY"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/c/h;->a(Landroid/graphics/drawable/Drawable;)Lcom/twidroid/ui/c/h;

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->G:Lcom/twidroid/UberSocialApplication;

    const v2, 0x7f0c01bb

    invoke-virtual {v0, v2}, Lcom/twidroid/UberSocialApplication;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/c/h;->b(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/twidroid/ui/c/h;->b(I)V

    move-object v0, v1

    goto/16 :goto_5

    :pswitch_1c0
    new-instance v1, Lcom/twidroid/ui/c/c;

    new-instance v0, Lcom/twidroid/fragments/e/g;

    iget-object v2, p0, Lcom/twidroid/ui/c/g;->G:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/twidroid/fragments/e/g;-><init>(Lcom/twidroid/model/twitter/c;)V

    const-string v2, "TAB_TIMELINE"

    invoke-direct {v1, v0, v2}, Lcom/twidroid/ui/c/c;-><init>(Lcom/twidroid/fragments/base/o;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->K:Ljava/util/Map;

    const-string v2, "TAB_TIMELINE"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/c/h;->a(Landroid/graphics/drawable/Drawable;)Lcom/twidroid/ui/c/h;

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->G:Lcom/twidroid/UberSocialApplication;

    const v2, 0x7f0c0020

    invoke-virtual {v0, v2}, Lcom/twidroid/UberSocialApplication;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/c/h;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/twidroid/ui/c/h;->a(Z)V

    invoke-virtual {v1, p1}, Lcom/twidroid/ui/c/h;->b(I)V

    move-object v0, v1

    goto/16 :goto_5

    :pswitch_1fc
    new-instance v1, Lcom/twidroid/ui/c/c;

    new-instance v0, Lcom/twidroid/fragments/e/am;

    iget-object v2, p0, Lcom/twidroid/ui/c/g;->G:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/twidroid/fragments/e/am;-><init>(Lcom/twidroid/model/twitter/c;)V

    const-string v2, "TAB_TRENDINGTOPICS"

    invoke-direct {v1, v0, v2}, Lcom/twidroid/ui/c/c;-><init>(Lcom/twidroid/fragments/base/o;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->K:Ljava/util/Map;

    const-string v2, "TAB_TRENDINGTOPICS"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/c/h;->a(Landroid/graphics/drawable/Drawable;)Lcom/twidroid/ui/c/h;

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->G:Lcom/twidroid/UberSocialApplication;

    const v2, 0x7f0c01d8

    invoke-virtual {v0, v2}, Lcom/twidroid/UberSocialApplication;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/c/h;->b(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/twidroid/ui/c/h;->b(I)V

    move-object v0, v1

    goto/16 :goto_5

    :pswitch_235
    new-instance v1, Lcom/twidroid/ui/c/c;

    new-instance v0, Lcom/twidroid/fragments/e/b;

    invoke-direct {v0}, Lcom/twidroid/fragments/e/b;-><init>()V

    const-string v2, "TAB_FB_TIMELINE"

    invoke-direct {v1, v0, v2}, Lcom/twidroid/ui/c/c;-><init>(Lcom/twidroid/fragments/base/o;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->K:Ljava/util/Map;

    const-string v2, "TAB_FB_TIMELINE"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/c/h;->a(Landroid/graphics/drawable/Drawable;)Lcom/twidroid/ui/c/h;

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->G:Lcom/twidroid/UberSocialApplication;

    const v2, 0x7f0c0121

    invoke-virtual {v0, v2}, Lcom/twidroid/UberSocialApplication;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/c/h;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/twidroid/ui/c/h;->a(Z)V

    invoke-virtual {v1, p1}, Lcom/twidroid/ui/c/h;->b(I)V

    move-object v0, v1

    goto/16 :goto_5

    :pswitch_267
    new-instance v1, Lcom/twidroid/ui/c/c;

    new-instance v0, Lcom/twidroid/fragments/e/k;

    invoke-direct {v0}, Lcom/twidroid/fragments/e/k;-><init>()V

    const-string v2, "TAB_INNER_CIRCLE"

    invoke-direct {v1, v0, v2}, Lcom/twidroid/ui/c/c;-><init>(Lcom/twidroid/fragments/base/o;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->K:Ljava/util/Map;

    const-string v2, "TAB_INNER_CIRCLE"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/c/h;->a(Landroid/graphics/drawable/Drawable;)Lcom/twidroid/ui/c/h;

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->G:Lcom/twidroid/UberSocialApplication;

    const v2, 0x7f0c0183

    invoke-virtual {v0, v2}, Lcom/twidroid/UberSocialApplication;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/c/h;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/twidroid/ui/c/h;->a(Z)V

    invoke-virtual {v1, p1}, Lcom/twidroid/ui/c/h;->b(I)V

    move-object v0, v1

    goto/16 :goto_5

    :pswitch_299
    new-instance v1, Lcom/twidroid/ui/c/c;

    new-instance v0, Lcom/twidroid/fragments/e/av;

    invoke-direct {v0}, Lcom/twidroid/fragments/e/av;-><init>()V

    const-string v2, "TAB_VIDEO_STREAM"

    invoke-direct {v1, v0, v2}, Lcom/twidroid/ui/c/c;-><init>(Lcom/twidroid/fragments/base/o;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->G:Lcom/twidroid/UberSocialApplication;

    const v2, 0x7f0c01dc

    invoke-virtual {v0, v2}, Lcom/twidroid/UberSocialApplication;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/c/h;->b(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/twidroid/ui/c/h;->b(I)V

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->K:Ljava/util/Map;

    const-string v2, "TAB_VIDEO_STREAM"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/c/h;->a(Landroid/graphics/drawable/Drawable;)Lcom/twidroid/ui/c/h;

    invoke-virtual {v1, v3}, Lcom/twidroid/ui/c/h;->d(Z)V

    move-object v0, v1

    goto/16 :goto_5

    nop

    :pswitch_data_2cc
    .packed-switch 0x0
        :pswitch_1c0
        :pswitch_14e
        :pswitch_36
        :pswitch_187
        :pswitch_d9
        :pswitch_4
        :pswitch_235
        :pswitch_115
        :pswitch_64
        :pswitch_1fc
        :pswitch_4
        :pswitch_9d
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_267
        :pswitch_299
    .end packed-switch
.end method

.method private c(II)I
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/c/h;

    invoke-virtual {v0}, Lcom/twidroid/ui/c/h;->g()I

    move-result v2

    if-ne v2, p1, :cond_1f

    invoke-virtual {v0}, Lcom/twidroid/ui/c/h;->j()I

    move-result v0

    if-ne v0, p2, :cond_1f

    :goto_1e
    return v1

    :cond_1f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_23
    const/4 v1, -0x1

    goto :goto_1e
.end method

.method private c(Landroid/content/Context;)V
    .registers 5

    sget-object v0, Lcom/twidroid/ui/c/g;->L:Ljava/util/Map;

    if-nez v0, :cond_6d

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twidroid/ui/c/g;->L:Ljava/util/Map;

    sget-object v0, Lcom/twidroid/ui/c/g;->L:Ljava/util/Map;

    const-string v1, "TAB_DIRECT_MESSAGES"

    const v2, 0x7f0c001d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twidroid/ui/c/g;->L:Ljava/util/Map;

    const-string v1, "TAB_SEARCH_NEARBY"

    const v2, 0x7f0c01bb

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twidroid/ui/c/g;->L:Ljava/util/Map;

    const-string v1, "TAB_FAVORITES"

    const v2, 0x7f0c01b0

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twidroid/ui/c/g;->L:Ljava/util/Map;

    const-string v1, "TAB_LISTMANAGER"

    const v2, 0x7f0c01b5

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twidroid/ui/c/g;->L:Ljava/util/Map;

    const-string v1, "TAB_MENTIONS"

    const v2, 0x7f0c001f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twidroid/ui/c/g;->L:Ljava/util/Map;

    const-string v1, "TAB_RETWEETS"

    const v2, 0x7f0c01d0

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twidroid/ui/c/g;->L:Ljava/util/Map;

    const-string v1, "TAB_TRENDINGTOPICS"

    const v2, 0x7f0c01d8

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6d
    return-void
.end method

.method private e()Z
    .registers 12

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const-string v1, "ubconfig"

    const-string v7, "position"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_26

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :goto_25
    return v9

    :cond_26
    :goto_26
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_f4

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v0, 0x2

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_7b

    move v0, v8

    :goto_38
    const/4 v1, 0x3

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_7d

    move v1, v8

    :goto_40
    const/4 v2, 0x4

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x5

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x6

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v2, 0x7

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_7f

    move v2, v8

    :goto_57
    const/16 v10, 0x8

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    const/16 v10, 0x9

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    packed-switch v7, :pswitch_data_fa

    :pswitch_65
    goto :goto_26

    :pswitch_66
    invoke-direct {p0, v4}, Lcom/twidroid/ui/c/g;->b(I)Lcom/twidroid/ui/c/h;

    move-result-object v4

    if-eqz v4, :cond_26

    invoke-virtual {v4, v0}, Lcom/twidroid/ui/c/h;->a(Z)V

    invoke-virtual {v4, v1}, Lcom/twidroid/ui/c/h;->b(Z)V

    invoke-virtual {v4, v2}, Lcom/twidroid/ui/c/h;->c(Z)Lcom/twidroid/ui/c/h;

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_7b
    move v0, v9

    goto :goto_38

    :cond_7d
    move v1, v9

    goto :goto_40

    :cond_7f
    move v2, v9

    goto :goto_57

    :pswitch_81
    new-instance v7, Lcom/twidroid/ui/c/e;

    invoke-direct {v7}, Lcom/twidroid/ui/c/e;-><init>()V

    invoke-virtual {v7, v4}, Lcom/twidroid/ui/c/e;->b(I)V

    invoke-virtual {v7, v6}, Lcom/twidroid/ui/c/e;->b(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/twidroid/ui/c/e;->a(Z)V

    invoke-virtual {v7, v1}, Lcom/twidroid/ui/c/e;->b(Z)V

    invoke-virtual {v7, v5}, Lcom/twidroid/ui/c/e;->a(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Lcom/twidroid/ui/c/e;->c(Z)Lcom/twidroid/ui/c/h;

    invoke-virtual {v7, v10}, Lcom/twidroid/ui/c/e;->c(Ljava/lang/String;)Lcom/twidroid/ui/c/h;

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :pswitch_a1
    new-instance v5, Lcom/twidroid/ui/c/i;

    invoke-direct {v5}, Lcom/twidroid/ui/c/i;-><init>()V

    invoke-virtual {v5, v4}, Lcom/twidroid/ui/c/i;->b(I)V

    invoke-virtual {v5, v6}, Lcom/twidroid/ui/c/i;->b(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/twidroid/ui/c/i;->a(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/twidroid/ui/c/i;->a(Z)V

    invoke-virtual {v5, v1}, Lcom/twidroid/ui/c/i;->b(Z)V

    invoke-virtual {v5, v2}, Lcom/twidroid/ui/c/i;->c(Z)Lcom/twidroid/ui/c/h;

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_bf
    invoke-direct {p0, v4}, Lcom/twidroid/ui/c/g;->b(I)Lcom/twidroid/ui/c/h;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/twidroid/ui/c/h;->a(Z)V

    invoke-virtual {v4, v1}, Lcom/twidroid/ui/c/h;->b(Z)V

    invoke-virtual {v4, v2}, Lcom/twidroid/ui/c/h;->c(Z)Lcom/twidroid/ui/c/h;

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_d3
    new-instance v7, Lcom/twidroid/ui/c/b;

    invoke-direct {v7}, Lcom/twidroid/ui/c/b;-><init>()V

    invoke-virtual {v7, v4}, Lcom/twidroid/ui/c/b;->b(I)V

    invoke-virtual {v7, v10}, Lcom/twidroid/ui/c/b;->c(Ljava/lang/String;)Lcom/twidroid/ui/c/h;

    invoke-virtual {v7, v0}, Lcom/twidroid/ui/c/b;->a(Z)V

    invoke-virtual {v7, v1}, Lcom/twidroid/ui/c/b;->b(Z)V

    invoke-virtual {v7, v6}, Lcom/twidroid/ui/c/b;->b(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Lcom/twidroid/ui/c/b;->a(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Lcom/twidroid/ui/c/b;->c(Z)Lcom/twidroid/ui/c/h;

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :cond_f4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move v9, v8

    goto/16 :goto_25

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_66
        :pswitch_a1
        :pswitch_81
        :pswitch_65
        :pswitch_bf
        :pswitch_d3
    .end packed-switch
.end method


# virtual methods
.method public a(I)Lcom/twidroid/ui/c/h;
    .registers 3

    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/c/h;

    goto :goto_b
.end method

.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/twidroid/ui/c/g;->b(I)Lcom/twidroid/ui/c/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/twidroid/ui/c/g;->b(I)Lcom/twidroid/ui/c/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/twidroid/ui/c/g;->b(I)Lcom/twidroid/ui/c/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/16 v1, 0x13

    invoke-direct {p0, v1}, Lcom/twidroid/ui/c/g;->b(I)Lcom/twidroid/ui/c/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lcom/twidroid/ui/c/g;->b(I)Lcom/twidroid/ui/c/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/twidroid/ui/c/g;->b(I)Lcom/twidroid/ui/c/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/twidroid/ui/c/g;->b(I)Lcom/twidroid/ui/c/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/twidroid/ui/c/g;->b(I)Lcom/twidroid/ui/c/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/twidroid/ui/c/g;->b(I)Lcom/twidroid/ui/c/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/twidroid/ui/c/g;->b(I)Lcom/twidroid/ui/c/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/twidroid/ui/c/g;->b(I)Lcom/twidroid/ui/c/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/twidroid/ui/c/g;->b(I)Lcom/twidroid/ui/c/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(ILcom/twidroid/ui/c/h;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 7

    const v4, 0x7f020128

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/twidroid/ui/c/g;->K:Ljava/util/Map;

    iget-object v1, p0, Lcom/twidroid/ui/c/g;->K:Ljava/util/Map;

    const-string v2, "TAB_TIMELINE"

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/twidroid/ui/c/g;->K:Ljava/util/Map;

    const-string v2, "TAB_FB_TIMELINE"

    const v3, 0x7f020113

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/twidroid/ui/c/g;->K:Ljava/util/Map;

    const-string v2, "TAB_MENTIONS"

    const v3, 0x7f020119

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/twidroid/ui/c/g;->K:Ljava/util/Map;

    const-string v2, "TAB_DIRECT_MESSAGES"

    const v3, 0x7f020112

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/twidroid/ui/c/g;->K:Ljava/util/Map;

    const-string v2, "TAB_SEARCH_NEARBY"

    const v3, 0x7f02011c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/twidroid/ui/c/g;->K:Ljava/util/Map;

    const-string v2, "TAB_SEARCH"

    const v3, 0x7f020122

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/twidroid/ui/c/g;->K:Ljava/util/Map;

    const-string v2, "TAB_TRENDINGTOPICS"

    const v3, 0x7f020129

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/twidroid/ui/c/g;->K:Ljava/util/Map;

    const-string v2, "TAB_RETWEETS"

    const v3, 0x7f020121

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/twidroid/ui/c/g;->K:Ljava/util/Map;

    const-string v2, "TAB_INNER_CIRCLE"

    const v3, 0x7f020115

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/twidroid/ui/c/g;->K:Ljava/util/Map;

    const-string v2, "TAB_FAVORITES"

    const v3, 0x7f020114

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/twidroid/ui/c/g;->K:Ljava/util/Map;

    const-string v2, "TAB_LISTMANAGER"

    const v3, 0x7f020117

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/twidroid/ui/c/g;->K:Ljava/util/Map;

    const-string v2, "TAB_VIDEO_STREAM"

    const v3, 0x7f02012c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/twidroid/ui/c/g;->K:Ljava/util/Map;

    const-string v2, "outbox"

    const v3, 0x7f02007a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/twidroid/ui/c/g;->G:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/d/v;->bv()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/twidroid/ui/themes/r;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_101

    :try_start_d1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.twidroid:drawable/ic_menu_timeline_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/ui/c/g;->G:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;

    move-result-object v2

    iget-object v2, v2, Lcom/twidroid/ui/themes/r;->z:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/twidroid/ui/c/g;->K:Ljava/util/Map;

    const-string v3, "TAB_TIMELINE"

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_101} :catch_102

    :cond_101
    :goto_101
    return-void

    :catch_102
    move-exception v1

    iget-object v1, p0, Lcom/twidroid/ui/c/g;->K:Ljava/util/Map;

    const-string v2, "TAB_TIMELINE"

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_101
.end method

.method public a(II)Z
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/twidroid/ui/c/g;->c(II)I

    move-result v0

    if-ltz v0, :cond_d

    iget-object v1, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public a(Lcom/twidroid/ui/c/h;)Z
    .registers 3

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Class;)Z
    .registers 6

    const/4 v2, 0x0

    if-nez p1, :cond_5

    move v0, v2

    :goto_4
    return v0

    :cond_5
    iget-object v0, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/c/h;

    instance-of v1, v0, Lcom/twidroid/ui/c/c;

    if-eqz v1, :cond_b

    move-object v1, v0

    check-cast v1, Lcom/twidroid/ui/c/c;

    invoke-virtual {v1}, Lcom/twidroid/ui/c/c;->f()Lcom/twidroid/fragments/base/o;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/twidroid/ui/c/h;->b()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_4

    :cond_34
    move v0, v2

    goto :goto_4
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public b(II)V
    .registers 6

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/c/h;

    iget-object v1, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twidroid/ui/c/h;

    iget-object v2, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/twidroid/ui/c/g;->a(Landroid/content/Context;)V

    return-void
.end method

.method public b(Lcom/twidroid/ui/c/h;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/twidroid/ui/c/h;->g()I

    move-result v0

    invoke-virtual {p1}, Lcom/twidroid/ui/c/h;->j()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/twidroid/ui/c/g;->c(II)I

    move-result v0

    if-gez v0, :cond_15

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public c()V
    .registers 8

    const/4 v6, 0x0

    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v0, "ubconfig"

    invoke-virtual {v2, v0, v6, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    iget-object v0, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a7

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/c/h;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "tabid"

    invoke-virtual {v0}, Lcom/twidroid/ui/c/h;->g()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "caption"

    invoke-virtual {v0}, Lcom/twidroid/ui/c/h;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "type"

    invoke-virtual {v0}, Lcom/twidroid/ui/c/h;->j()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "fixed"

    invoke-virtual {v0}, Lcom/twidroid/ui/c/h;->i()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, "hidden"

    invoke-virtual {v0}, Lcom/twidroid/ui/c/h;->b()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, "themeitem"

    invoke-virtual {v0}, Lcom/twidroid/ui/c/h;->k()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, "icon"

    invoke-virtual {v0}, Lcom/twidroid/ui/c/h;->l()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "iconUrl"

    invoke-virtual {v0}, Lcom/twidroid/ui/c/h;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "position"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    instance-of v4, v0, Lcom/twidroid/ui/c/e;

    if-eqz v4, :cond_9d

    const-string v4, "param"

    check-cast v0, Lcom/twidroid/ui/c/e;

    invoke-virtual {v0}, Lcom/twidroid/ui/c/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9d
    const-string v0, "ubconfig"

    invoke-virtual {v2, v0, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_10

    :cond_a7
    return-void
.end method

.method public c(Lcom/twidroid/ui/c/h;)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public d()V
    .registers 5

    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :try_start_d
    const-string v1, "ubconfig"

    const-string v2, "themeitem = 1"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15} :catch_19

    :goto_15
    invoke-direct {p0}, Lcom/twidroid/ui/c/g;->e()Z

    return-void

    :catch_19
    move-exception v0

    goto :goto_15
.end method

.method public d(Lcom/twidroid/ui/c/h;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    :cond_18
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/c/g;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
