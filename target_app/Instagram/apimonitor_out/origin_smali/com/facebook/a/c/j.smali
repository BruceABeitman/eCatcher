.class public final Lcom/facebook/a/c/j;
.super Ljava/lang/Object;
.source "SSLConnectionProvider.java"

# interfaces
.implements Lcom/facebook/a/c/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .registers 2

    const/16 v0, 0xbb8

    invoke-static {}, Lcom/facebook/a/a;->a()Lcom/facebook/a/a/b;

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-static {}, Lcom/facebook/a/a;->a()Lcom/facebook/a/a/b;

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 3

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/facebook/a/c/j;->a(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method
