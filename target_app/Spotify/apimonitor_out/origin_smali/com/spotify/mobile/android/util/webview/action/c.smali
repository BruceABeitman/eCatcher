.class public final Lcom/spotify/mobile/android/util/webview/action/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/spotify/mobile/android/util/webview/action/a;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/spotify/mobile/android/util/webview/action/WebActionType;",
            "Lcom/spotify/mobile/android/util/webview/action/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/util/webview/action/a;

    invoke-direct {v0}, Lcom/spotify/mobile/android/util/webview/action/a;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/webview/action/c;->b:Lcom/spotify/mobile/android/util/webview/action/a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/webview/action/c;->c:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/spotify/mobile/android/util/webview/action/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Lcom/spotify/mobile/android/util/webview/action/b;
    .registers 7

    invoke-static {p1}, Lcom/spotify/mobile/android/util/webview/action/WebActionType;->a(Landroid/net/Uri;)Lcom/spotify/mobile/android/util/webview/action/WebActionType;

    move-result-object v1

    sget-object v0, Lcom/spotify/mobile/android/util/webview/action/WebActionType;->e:Lcom/spotify/mobile/android/util/webview/action/WebActionType;

    if-ne v1, v0, :cond_14

    const-string v0, "Action not supported."

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/spotify/mobile/android/util/webview/action/a;->a:Lcom/spotify/mobile/android/util/webview/action/b;

    :goto_13
    return-object v1

    :cond_14
    iget-object v2, p0, Lcom/spotify/mobile/android/util/webview/action/c;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/spotify/mobile/android/util/webview/action/c;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/webview/action/b;

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/spotify/mobile/android/util/webview/action/c;->b:Lcom/spotify/mobile/android/util/webview/action/a;

    invoke-static {v2, v1}, Lcom/spotify/mobile/android/util/webview/action/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/webview/action/WebActionType;)Lcom/spotify/mobile/android/util/webview/action/b;

    move-result-object v0

    iget-object v2, p0, Lcom/spotify/mobile/android/util/webview/action/c;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    :cond_4d
    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/util/webview/action/b;->a(Ljava/util/Map;)V

    goto :goto_13
.end method

.method public final a(Lcom/spotify/mobile/android/util/webview/action/WebActionType;Lcom/spotify/mobile/android/util/webview/action/b;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/util/webview/action/c;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
