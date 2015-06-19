.class public final Lcom/spotify/mobile/android/util/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/z;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/z",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:[Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/Boolean;

.field private b:Landroid/content/Context;

.field private c:Lcom/spotify/mobile/android/util/aa;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "connected"

    aput-object v2, v0, v1

    sput-object v0, Lcom/spotify/mobile/android/util/z;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/aa;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/util/z;->a:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/spotify/mobile/android/util/z;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/util/z;->c:Lcom/spotify/mobile/android/util/aa;

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/k",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v0, Landroid/support/v4/content/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/z;->b:Landroid/content/Context;

    sget-object v2, Lcom/spotify/mobile/android/provider/v;->a:Landroid/net/Uri;

    sget-object v3, Lcom/spotify/mobile/android/util/z;->d:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Landroid/support/v4/content/k;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/k",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
    .registers 5

    check-cast p2, Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v0

    iget-object v1, p0, Lcom/spotify/mobile/android/util/z;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/spotify/mobile/android/util/z;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_2a

    :cond_19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/util/z;->a:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/spotify/mobile/android/util/z;->c:Lcom/spotify/mobile/android/util/aa;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/z;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/util/aa;->d(Z)V

    :cond_2a
    return-void
.end method
