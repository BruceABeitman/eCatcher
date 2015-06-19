.class Lcom/ubermedia/net/shortening/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/ubermedia/net/shortening/BitLyAuthActivity;


# direct methods
.method private constructor <init>(Lcom/ubermedia/net/shortening/BitLyAuthActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/ubermedia/net/shortening/a;->a:Lcom/ubermedia/net/shortening/BitLyAuthActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ubermedia/net/shortening/BitLyAuthActivity;Lcom/ubermedia/net/shortening/BitLyAuthActivity$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/ubermedia/net/shortening/a;-><init>(Lcom/ubermedia/net/shortening/BitLyAuthActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/util/Map;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    new-instance v1, Lcom/ubermedia/net/e;

    invoke-direct {v1}, Lcom/ubermedia/net/e;-><init>()V

    :try_start_6
    const-string v2, "https://api-ssl.bitly.com/oauth/access_token"

    const/4 v3, 0x0

    aget-object v3, p1, v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Lcom/ubermedia/net/d;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ubermedia/net/e;)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f} :catch_11

    move-result-object v0

    :goto_10
    return-object v0

    :catch_11
    move-exception v1

    const-string v2, "GetBitLyTokenTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Auth failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method protected a(Ljava/lang/String;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    :try_start_3
    const-string v0, "access_token="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "access_token="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ubermedia/net/shortening/a;->a:Lcom/ubermedia/net/shortening/BitLyAuthActivity;

    const/4 v2, 0x0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ubermedia/net/shortening/BitLyAuthActivity;->a(Lcom/ubermedia/net/shortening/BitLyAuthActivity;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_24} :catch_25

    :goto_24
    return-void

    :catch_25
    move-exception v0

    iget-object v0, p0, Lcom/ubermedia/net/shortening/a;->a:Lcom/ubermedia/net/shortening/BitLyAuthActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ubermedia/net/shortening/BitLyAuthActivity;->a(Lcom/ubermedia/net/shortening/BitLyAuthActivity;Ljava/lang/String;)V

    goto :goto_24
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/ubermedia/net/shortening/a;->a([Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ubermedia/net/shortening/a;->a(Ljava/lang/String;)V

    return-void
.end method
