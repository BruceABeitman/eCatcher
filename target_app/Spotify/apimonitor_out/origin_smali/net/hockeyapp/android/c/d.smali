.class public final Lnet/hockeyapp/android/c/d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/Handler;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V
    .registers 10

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lnet/hockeyapp/android/c/d;->a:Landroid/content/Context;

    iput-object p2, p0, Lnet/hockeyapp/android/c/d;->c:Ljava/lang/String;

    iput-object p3, p0, Lnet/hockeyapp/android/c/d;->d:Ljava/lang/String;

    iput-object p4, p0, Lnet/hockeyapp/android/c/d;->e:Ljava/lang/String;

    iput-object p5, p0, Lnet/hockeyapp/android/c/d;->f:Ljava/lang/String;

    iput-object p6, p0, Lnet/hockeyapp/android/c/d;->g:Ljava/lang/String;

    iput-object p7, p0, Lnet/hockeyapp/android/c/d;->h:Ljava/lang/String;

    iput-object p8, p0, Lnet/hockeyapp/android/c/d;->b:Landroid/os/Handler;

    iput-boolean p9, p0, Lnet/hockeyapp/android/c/d;->i:Z

    if-eqz p1, :cond_1a

    invoke-static {p1}, Lnet/hockeyapp/android/a;->a(Landroid/content/Context;)V

    :cond_1a
    return-void
.end method

.method private a(Lorg/apache/http/client/HttpClient;)Ljava/util/HashMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/HttpClient;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "name"

    iget-object v4, p0, Lnet/hockeyapp/android/c/d;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "email"

    iget-object v4, p0, Lnet/hockeyapp/android/c/d;->e:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "subject"

    iget-object v4, p0, Lnet/hockeyapp/android/c/d;->f:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "text"

    iget-object v4, p0, Lnet/hockeyapp/android/c/d;->g:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "bundle_identifier"

    sget-object v4, Lnet/hockeyapp/android/a;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "bundle_short_version"

    sget-object v4, Lnet/hockeyapp/android/a;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "bundle_version"

    sget-object v4, Lnet/hockeyapp/android/a;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "os_version"

    sget-object v4, Lnet/hockeyapp/android/a;->e:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "oem"

    sget-object v4, Lnet/hockeyapp/android/a;->g:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "model"

    sget-object v4, Lnet/hockeyapp/android/a;->f:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v2, "UTF-8"

    invoke-direct {v3, v0, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const-string v0, "UTF-8"

    invoke-virtual {v3, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->setContentEncoding(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/hockeyapp/android/c/d;->h:Ljava/lang/String;

    if-eqz v0, :cond_f3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnet/hockeyapp/android/c/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lnet/hockeyapp/android/c/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/c/d;->c:Ljava/lang/String;

    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    iget-object v2, p0, Lnet/hockeyapp/android/c/d;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    :goto_b3
    if-eqz v0, :cond_fd

    invoke-virtual {v0, v3}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-interface {p1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    move-object v2, v0

    :goto_bd
    if-eqz v2, :cond_106

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v4, "type"

    const-string v5, "send"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "response"

    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "status"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f2
    return-object v0

    :cond_f3
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    iget-object v2, p0, Lnet/hockeyapp/android/c/d;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    move-object v0, v1

    goto :goto_b3

    :cond_fd
    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-interface {p1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_103
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_103} :catch_108
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_103} :catch_10e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_103} :catch_113

    move-result-object v0

    move-object v2, v0

    goto :goto_bd

    :cond_106
    move-object v0, v1

    goto :goto_f2

    :catch_108
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_10c
    move-object v0, v1

    goto :goto_f2

    :catch_10e
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_10c

    :catch_113
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10c
.end method

.method private b(Lorg/apache/http/client/HttpClient;)Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/HttpClient;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnet/hockeyapp/android/c/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/hockeyapp/android/c/d;->h:Ljava/lang/String;

    invoke-static {v2}, Lnet/hockeyapp/android/d/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :try_start_2a
    invoke-interface {p1, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "type"

    const-string v4, "fetch"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "response"

    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "status"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_61
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2a .. :try_end_61} :catch_62
    .catch Ljava/lang/IllegalStateException; {:try_start_2a .. :try_end_61} :catch_68
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_61} :catch_6d

    :goto_61
    return-object v0

    :catch_62
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    :goto_66
    const/4 v0, 0x0

    goto :goto_61

    :catch_68
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_66

    :catch_6d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_66
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hockeyapp/android/c/d;->a:Landroid/content/Context;

    iput-object v0, p0, Lnet/hockeyapp/android/c/d;->j:Landroid/app/ProgressDialog;

    return-void
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Lnet/hockeyapp/android/d/a;->a()Lnet/hockeyapp/android/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/hockeyapp/android/d/a;->b()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iget-boolean v1, p0, Lnet/hockeyapp/android/c/d;->i:Z

    if-eqz v1, :cond_15

    iget-object v1, p0, Lnet/hockeyapp/android/c/d;->h:Ljava/lang/String;

    if-eqz v1, :cond_15

    invoke-direct {p0, v0}, Lnet/hockeyapp/android/c/d;->b(Lorg/apache/http/client/HttpClient;)Ljava/util/HashMap;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    iget-boolean v1, p0, Lnet/hockeyapp/android/c/d;->i:Z

    if-nez v1, :cond_1e

    invoke-direct {p0, v0}, Lnet/hockeyapp/android/c/d;->a(Lorg/apache/http/client/HttpClient;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_14

    :cond_1e
    const/4 v0, 0x0

    goto :goto_14
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 6

    check-cast p1, Ljava/util/HashMap;

    iget-object v0, p0, Lnet/hockeyapp/android/c/d;->j:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_b

    :try_start_6
    iget-object v0, p0, Lnet/hockeyapp/android/c/d;->j:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_49

    :cond_b
    :goto_b
    iget-object v0, p0, Lnet/hockeyapp/android/c/d;->b:Landroid/os/Handler;

    if-eqz v0, :cond_48

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "request_type"

    const-string v0, "type"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "feedback_response"

    const-string v0, "response"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "feedback_status"

    const-string v0, "status"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lnet/hockeyapp/android/c/d;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_48
    return-void

    :catch_49
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method protected final onPreExecute()V
    .registers 6

    const-string v0, "Sending feedback.."

    iget-boolean v1, p0, Lnet/hockeyapp/android/c/d;->i:Z

    if-eqz v1, :cond_8

    const-string v0, "Retrieving discussions..."

    :cond_8
    iget-object v1, p0, Lnet/hockeyapp/android/c/d;->j:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lnet/hockeyapp/android/c/d;->j:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_20

    :cond_14
    iget-object v1, p0, Lnet/hockeyapp/android/c/d;->a:Landroid/content/Context;

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/c/d;->j:Landroid/app/ProgressDialog;

    :cond_20
    return-void
.end method
