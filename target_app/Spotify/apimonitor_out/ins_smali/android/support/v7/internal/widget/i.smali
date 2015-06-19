.class final Landroid/support/v7/internal/widget/i;
.super Landroid/os/AsyncTask;
.source "SourceFile"
.field final synthetic a:Landroid/support/v7/internal/widget/d;
.method private constructor <init>(Landroid/support/v7/internal/widget/d;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/i;->a:Landroid/support/v7/internal/widget/d;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Landroid/support/v7/internal/widget/d;B)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/i;-><init>(Landroid/support/v7/internal/widget/d;)V
return-void
.end method
.method private varargs a([Ljava/lang/Object;)Ljava/lang/Void;
.registers 13
const/4 v1, 0x1
const/4 v2, 0x0
const/4 v10, 0x0
aget-object v0, p1, v2
check-cast v0, Ljava/util/List;
aget-object v1, p1, v1
check-cast v1, Ljava/lang/String;
:try_start_b
iget-object v3, p0, Landroid/support/v7/internal/widget/i;->a:Landroid/support/v7/internal/widget/d;
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
if-ge v2, v5, :cond_87
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v7/internal/widget/g;
const/4 v6, 0x0
const-string v7, "historical-record"
invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
const/4 v6, 0x0
const-string v7, "activity"
iget-object v8, v1, Landroid/support/v7/internal/widget/g;->a:Landroid/content/ComponentName;
invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;
move-result-object v8
invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
const/4 v6, 0x0
const-string v7, "time"
iget-wide v8, v1, Landroid/support/v7/internal/widget/g;->b:J
invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v8
invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
const/4 v6, 0x0
const-string v7, "weight"
iget v1, v1, Landroid/support/v7/internal/widget/g;->c:F
invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
move-result-object v1
invoke-interface {v4, v6, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
const/4 v1, 0x0
const-string v6, "historical-record"
invoke-interface {v4, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
:try_end_6b
.catchall {:try_start_1b .. :try_end_6b} :catchall_11d
.catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_6b} :catch_9d
.catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_6b} :catch_c7
.catch Ljava/io/IOException; {:try_start_1b .. :try_end_6b} :catch_f1
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_32
:catch_6f
move-exception v0
invoke-static {}, Landroid/support/v7/internal/widget/d;->d()Ljava/lang/String;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Error writing historical recrod file: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:goto_86
:cond_86
return-object v10
:cond_87
const/4 v0, 0x0
:try_start_88
const-string v1, "historical-records"
invoke-interface {v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
:try_end_90
.catchall {:try_start_88 .. :try_end_90} :catchall_11d
.catch Ljava/lang/IllegalArgumentException; {:try_start_88 .. :try_end_90} :catch_9d
.catch Ljava/lang/IllegalStateException; {:try_start_88 .. :try_end_90} :catch_c7
.catch Ljava/io/IOException; {:try_start_88 .. :try_end_90} :catch_f1
iget-object v0, p0, Landroid/support/v7/internal/widget/i;->a:Landroid/support/v7/internal/widget/d;
invoke-static {v0}, Landroid/support/v7/internal/widget/d;->c(Landroid/support/v7/internal/widget/d;)Z
if-eqz v3, :cond_86
:try_start_97
invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
:try_end_9a
.catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9b
goto :goto_86
:catch_9b
move-exception v0
goto :goto_86
:catch_9d
move-exception v0
:try_start_9e
invoke-static {}, Landroid/support/v7/internal/widget/d;->d()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
const-string v4, "Error writing historical recrod file: "
invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v4, p0, Landroid/support/v7/internal/widget/i;->a:Landroid/support/v7/internal/widget/d;
invoke-static {v4}, Landroid/support/v7/internal/widget/d;->b(Landroid/support/v7/internal/widget/d;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_ba
.catchall {:try_start_9e .. :try_end_ba} :catchall_11d
iget-object v0, p0, Landroid/support/v7/internal/widget/i;->a:Landroid/support/v7/internal/widget/d;
invoke-static {v0}, Landroid/support/v7/internal/widget/d;->c(Landroid/support/v7/internal/widget/d;)Z
if-eqz v3, :cond_86
:try_start_c1
invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
:try_end_c4
.catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_c5
goto :goto_86
:catch_c5
move-exception v0
goto :goto_86
:catch_c7
move-exception v0
:try_start_c8
invoke-static {}, Landroid/support/v7/internal/widget/d;->d()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
const-string v4, "Error writing historical recrod file: "
invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v4, p0, Landroid/support/v7/internal/widget/i;->a:Landroid/support/v7/internal/widget/d;
invoke-static {v4}, Landroid/support/v7/internal/widget/d;->b(Landroid/support/v7/internal/widget/d;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_e4
.catchall {:try_start_c8 .. :try_end_e4} :catchall_11d
iget-object v0, p0, Landroid/support/v7/internal/widget/i;->a:Landroid/support/v7/internal/widget/d;
invoke-static {v0}, Landroid/support/v7/internal/widget/d;->c(Landroid/support/v7/internal/widget/d;)Z
if-eqz v3, :cond_86
:try_start_eb
invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
:try_end_ee
.catch Ljava/io/IOException; {:try_start_eb .. :try_end_ee} :catch_ef
goto :goto_86
:catch_ef
move-exception v0
goto :goto_86
:catch_f1
move-exception v0
:try_start_f2
invoke-static {}, Landroid/support/v7/internal/widget/d;->d()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
const-string v4, "Error writing historical recrod file: "
invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v4, p0, Landroid/support/v7/internal/widget/i;->a:Landroid/support/v7/internal/widget/d;
invoke-static {v4}, Landroid/support/v7/internal/widget/d;->b(Landroid/support/v7/internal/widget/d;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_10e
.catchall {:try_start_f2 .. :try_end_10e} :catchall_11d
iget-object v0, p0, Landroid/support/v7/internal/widget/i;->a:Landroid/support/v7/internal/widget/d;
invoke-static {v0}, Landroid/support/v7/internal/widget/d;->c(Landroid/support/v7/internal/widget/d;)Z
if-eqz v3, :cond_86
:try_start_115
invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
:try_end_118
.catch Ljava/io/IOException; {:try_start_115 .. :try_end_118} :catch_11a
goto/16 :goto_86
:catch_11a
move-exception v0
goto/16 :goto_86
:catchall_11d
move-exception v0
iget-object v1, p0, Landroid/support/v7/internal/widget/i;->a:Landroid/support/v7/internal/widget/d;
invoke-static {v1}, Landroid/support/v7/internal/widget/d;->c(Landroid/support/v7/internal/widget/d;)Z
if-eqz v3, :cond_128
:try_start_125
invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
:try_end_128
.catch Ljava/io/IOException; {:try_start_125 .. :try_end_128} :catch_129
:cond_128
:goto_128
throw v0
:catch_129
move-exception v1
goto :goto_128
.end method
.method public final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/i;->a([Ljava/lang/Object;)Ljava/lang/Void;
move-result-object v0
return-object v0
.end method