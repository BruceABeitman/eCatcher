.class final Landroid/support/v7/internal/widget/k;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/d;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/d;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/d;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/d;Landroid/support/v7/internal/widget/d$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/k;-><init>(Landroid/support/v7/internal/widget/d;)V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)Ljava/lang/Void;
    .registers 14

    const/4 v2, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    aget-object v0, p1, v2

    check-cast v0, Ljava/util/List;

    aget-object v1, p1, v11

    check-cast v1, Ljava/lang/String;

    :try_start_b
    iget-object v3, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/d;

    invoke-static {v3}, Landroid/support/v7/internal/widget/d;->a(Landroid/support/v7/internal/widget/d;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_15} :catch_6f

    move-result-object v3

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    const/4 v1, 0x0

    :try_start_1b
    invoke-interface {v4, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v1, "UTF-8"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v1, 0x0

    const-string v5, "historical-records"

    invoke-interface {v4, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    :goto_32
    if-ge v2, v5, :cond_8b

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/widget/i;

    const/4 v6, 0x0

    const-string v7, "historical-record"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v6, 0x0

    const-string v7, "activity"

    iget-object v8, v1, Landroid/support/v7/internal/widget/i;->a:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v6, 0x0

    const-string v7, "time"

    iget-wide v8, v1, Landroid/support/v7/internal/widget/i;->b:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v6, 0x0

    const-string v7, "weight"

    iget v1, v1, Landroid/support/v7/internal/widget/i;->c:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v6, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v6, "historical-record"

    invoke-interface {v4, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_6b
    .catchall {:try_start_1b .. :try_end_6b} :catchall_12d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_6b} :catch_a1
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_6b} :catch_cf
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_6b} :catch_fd

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_32

    :catch_6f
    move-exception v0

    invoke-static {}, Landroid/support/v7/internal/widget/d;->f()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing historical recrod file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8a
    :goto_8a
    return-object v10

    :cond_8b
    const/4 v0, 0x0

    :try_start_8c
    const-string v1, "historical-records"

    invoke-interface {v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_94
    .catchall {:try_start_8c .. :try_end_94} :catchall_12d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8c .. :try_end_94} :catch_a1
    .catch Ljava/lang/IllegalStateException; {:try_start_8c .. :try_end_94} :catch_cf
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_94} :catch_fd

    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/d;

    invoke-static {v0, v11}, Landroid/support/v7/internal/widget/d;->a(Landroid/support/v7/internal/widget/d;Z)Z

    if-eqz v3, :cond_8a

    :try_start_9b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_9f

    goto :goto_8a

    :catch_9f
    move-exception v0

    goto :goto_8a

    :catch_a1
    move-exception v0

    :try_start_a2
    invoke-static {}, Landroid/support/v7/internal/widget/d;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing historical recrod file: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/d;

    invoke-static {v4}, Landroid/support/v7/internal/widget/d;->b(Landroid/support/v7/internal/widget/d;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c2
    .catchall {:try_start_a2 .. :try_end_c2} :catchall_12d

    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/d;

    invoke-static {v0, v11}, Landroid/support/v7/internal/widget/d;->a(Landroid/support/v7/internal/widget/d;Z)Z

    if-eqz v3, :cond_8a

    :try_start_c9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_cd

    goto :goto_8a

    :catch_cd
    move-exception v0

    goto :goto_8a

    :catch_cf
    move-exception v0

    :try_start_d0
    invoke-static {}, Landroid/support/v7/internal/widget/d;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing historical recrod file: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/d;

    invoke-static {v4}, Landroid/support/v7/internal/widget/d;->b(Landroid/support/v7/internal/widget/d;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f0
    .catchall {:try_start_d0 .. :try_end_f0} :catchall_12d

    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/d;

    invoke-static {v0, v11}, Landroid/support/v7/internal/widget/d;->a(Landroid/support/v7/internal/widget/d;Z)Z

    if-eqz v3, :cond_8a

    :try_start_f7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_fa} :catch_fb

    goto :goto_8a

    :catch_fb
    move-exception v0

    goto :goto_8a

    :catch_fd
    move-exception v0

    :try_start_fe
    invoke-static {}, Landroid/support/v7/internal/widget/d;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing historical recrod file: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/d;

    invoke-static {v4}, Landroid/support/v7/internal/widget/d;->b(Landroid/support/v7/internal/widget/d;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11e
    .catchall {:try_start_fe .. :try_end_11e} :catchall_12d

    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/d;

    invoke-static {v0, v11}, Landroid/support/v7/internal/widget/d;->a(Landroid/support/v7/internal/widget/d;Z)Z

    if-eqz v3, :cond_8a

    :try_start_125
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_128} :catch_12a

    goto/16 :goto_8a

    :catch_12a
    move-exception v0

    goto/16 :goto_8a

    :catchall_12d
    move-exception v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/d;

    invoke-static {v1, v11}, Landroid/support/v7/internal/widget/d;->a(Landroid/support/v7/internal/widget/d;Z)Z

    if-eqz v3, :cond_138

    :try_start_135
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_138
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_138} :catch_139

    :cond_138
    :goto_138
    throw v0

    :catch_139
    move-exception v1

    goto :goto_138
.end method

.method public synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/k;->a([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
