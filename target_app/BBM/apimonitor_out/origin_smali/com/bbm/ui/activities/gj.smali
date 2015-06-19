.class final Lcom/bbm/ui/activities/gj;
.super Lcom/bbm/j/u;
.source "ConversationActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/gj;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()Z
    .registers 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/bbm/ui/activities/gj;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->R(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/fg;

    move-result-object v2

    iget-object v2, v2, Lcom/bbm/d/fg;->v:Lcom/bbm/util/bh;

    sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v2, v3, :cond_9b

    iget-object v2, p0, Lcom/bbm/ui/activities/gj;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->R(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/fg;

    move-result-object v2

    iget-object v2, v2, Lcom/bbm/d/fg;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9a

    iget-object v2, p0, Lcom/bbm/ui/activities/gj;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;

    move-result-object v2

    iget-object v3, p0, Lcom/bbm/ui/activities/gj;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v3}, Lcom/bbm/ui/activities/ConversationActivity;->R(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/fg;

    move-result-object v3

    iget-object v3, v3, Lcom/bbm/d/fg;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bbm/d/a;->H(Ljava/lang/String;)Lcom/bbm/d/ex;

    move-result-object v2

    iget-object v3, v2, Lcom/bbm/d/ex;->m:Lcom/bbm/util/bh;

    sget-object v4, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v3, v4, :cond_9b

    iget-object v3, p0, Lcom/bbm/ui/activities/gj;->a:Lcom/bbm/ui/activities/ConversationActivity;

    new-instance v4, Ljava/io/File;

    iget-object v0, v2, Lcom/bbm/d/ex;->h:Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9a

    iget-object v0, v2, Lcom/bbm/d/ex;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_4f
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_73
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v5, 0x800

    new-array v5, v5, [B

    :goto_81
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_9f

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_8b} :catch_8c

    goto :goto_81

    :catch_8c
    move-exception v0

    const v2, 0x7f0e02d2

    invoke-virtual {v3, v2}, Lcom/bbm/ui/activities/ConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    :cond_9a
    :goto_9a
    move v0, v1

    :cond_9b
    return v0

    :cond_9c
    iget-object v0, v2, Lcom/bbm/d/ex;->j:Ljava/lang/String;

    goto :goto_4f

    :cond_9f
    :try_start_9f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Ljava/io/File;->setReadable(ZZ)Z

    const v0, 0x7f0e02cc

    invoke-virtual {v3, v0}, Lcom/bbm/ui/activities/ConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_b7} :catch_8c

    goto :goto_9a
.end method
