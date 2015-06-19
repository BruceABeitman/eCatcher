.class public final Lcom/spotify/mobile/android/util/webview/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lcom/spotify/mobile/android/util/webview/action/b;


# instance fields
.field private a:Lcom/spotify/mobile/android/util/webview/action/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/spotify/mobile/android/util/webview/action/d;

    invoke-direct {v0}, Lcom/spotify/mobile/android/util/webview/action/d;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/util/webview/b;->b:Lcom/spotify/mobile/android/util/webview/action/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/util/webview/action/c;

    invoke-direct {v0, p1}, Lcom/spotify/mobile/android/util/webview/action/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/webview/b;->a:Lcom/spotify/mobile/android/util/webview/action/c;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Landroid/net/Uri;)Lcom/spotify/mobile/android/util/webview/action/b;
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/spotify/mobile/android/util/webview/a;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p2}, Lcom/spotify/mobile/android/util/webview/a;->a(Landroid/net/Uri;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_12
    const-string v0, "Invalid domain and/or source for %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/spotify/mobile/android/util/webview/b;->b:Lcom/spotify/mobile/android/util/webview/action/b;

    :goto_1d
    return-object v0

    :cond_1e
    iget-object v0, p0, Lcom/spotify/mobile/android/util/webview/b;->a:Lcom/spotify/mobile/android/util/webview/action/c;

    invoke-static {p2}, Lcom/spotify/mobile/android/util/webview/action/WebActionType;->a(Landroid/net/Uri;)Lcom/spotify/mobile/android/util/webview/action/WebActionType;

    move-result-object v0

    sget-object v3, Lcom/spotify/mobile/android/util/webview/action/WebActionType;->e:Lcom/spotify/mobile/android/util/webview/action/WebActionType;

    if-eq v0, v3, :cond_37

    move v0, v1

    :goto_29
    if-nez v0, :cond_39

    const-string v0, "Invalid action %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/spotify/mobile/android/util/webview/b;->b:Lcom/spotify/mobile/android/util/webview/action/b;

    goto :goto_1d

    :cond_37
    move v0, v2

    goto :goto_29

    :cond_39
    const-string v0, "valid domain and source for %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/util/webview/b;->a:Lcom/spotify/mobile/android/util/webview/action/c;

    invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/util/webview/action/c;->a(Landroid/net/Uri;)Lcom/spotify/mobile/android/util/webview/action/b;

    move-result-object v0

    goto :goto_1d
.end method

.method public final a(Lcom/spotify/mobile/android/util/webview/action/WebActionType;Lcom/spotify/mobile/android/util/webview/action/b;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/util/webview/b;->a:Lcom/spotify/mobile/android/util/webview/action/c;

    invoke-virtual {v0, p1, p2}, Lcom/spotify/mobile/android/util/webview/action/c;->a(Lcom/spotify/mobile/android/util/webview/action/WebActionType;Lcom/spotify/mobile/android/util/webview/action/b;)V

    return-void
.end method
