.class abstract Lcom/a/a/af;
.super Lcom/a/a/a/z;
.source "SourceFile"
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/a/a/a/bw;Lcom/a/a/a/by;)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Lcom/a/a/a/z;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/a/a/a/bw;Lcom/a/a/a/by;)V
return-void
.end method
.method private static a(Lcom/a/a/a/bz;Lcom/a/a/al;)Lcom/a/a/a/bz;
.registers 9
const-string v0, "app[identifier]"
iget-object v1, p1, Lcom/a/a/al;->b:Ljava/lang/String;
invoke-virtual {p0, v0, v1}, Lcom/a/a/a/bz;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/bz;
move-result-object v0
const-string v1, "app[name]"
iget-object v2, p1, Lcom/a/a/al;->f:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/a/a/a/bz;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/bz;
move-result-object v0
const-string v1, "app[display_version]"
iget-object v2, p1, Lcom/a/a/al;->c:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/a/a/a/bz;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/bz;
move-result-object v0
const-string v1, "app[build_version]"
iget-object v2, p1, Lcom/a/a/al;->d:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/a/a/a/bz;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/bz;
move-result-object v0
const-string v1, "app[source]"
iget v2, p1, Lcom/a/a/al;->g:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/a/a/a/bz;->a(Ljava/lang/String;Ljava/lang/Number;)Lcom/a/a/a/bz;
move-result-object v0
const-string v1, "app[minimum_sdk_version]"
iget-object v2, p1, Lcom/a/a/al;->h:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/a/a/a/bz;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/bz;
move-result-object v0
const-string v1, "app[built_sdk_version]"
iget-object v2, p1, Lcom/a/a/al;->i:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/a/a/a/bz;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/bz;
move-result-object v2
iget-object v0, p1, Lcom/a/a/al;->e:Ljava/lang/String;
invoke-static {v0}, Lcom/a/a/a/bc;->e(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_4b
const-string v0, "app[instance_identifier]"
iget-object v1, p1, Lcom/a/a/al;->e:Ljava/lang/String;
invoke-virtual {v2, v0, v1}, Lcom/a/a/a/bz;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/bz;
:cond_4b
iget-object v0, p1, Lcom/a/a/al;->j:Lcom/a/a/ad;
if-eqz v0, :cond_98
const/4 v1, 0x0
:try_start_50
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->z()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
iget-object v3, p1, Lcom/a/a/al;->j:Lcom/a/a/ad;
iget v3, v3, Lcom/a/a/ad;->b:I
invoke-virtual {v0, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
move-result-object v1
const-string v0, "app[icon][hash]"
iget-object v3, p1, Lcom/a/a/al;->j:Lcom/a/a/ad;
iget-object v3, v3, Lcom/a/a/ad;->a:Ljava/lang/String;
invoke-virtual {v2, v0, v3}, Lcom/a/a/a/bz;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/bz;
move-result-object v0
const-string v3, "app[icon][data]"
const-string v4, "icon.png"
const-string v5, "application/octet-stream"
invoke-virtual {v0, v3, v4, v5, v1}, Lcom/a/a/a/bz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/a/a/a/bz;
move-result-object v0
const-string v3, "app[icon][width]"
iget-object v4, p1, Lcom/a/a/al;->j:Lcom/a/a/ad;
iget v4, v4, Lcom/a/a/ad;->c:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v0, v3, v4}, Lcom/a/a/a/bz;->a(Ljava/lang/String;Ljava/lang/Number;)Lcom/a/a/a/bz;
move-result-object v0
const-string v3, "app[icon][height]"
iget-object v4, p1, Lcom/a/a/al;->j:Lcom/a/a/ad;
iget v4, v4, Lcom/a/a/ad;->d:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v0, v3, v4}, Lcom/a/a/a/bz;->a(Ljava/lang/String;Ljava/lang/Number;)Lcom/a/a/a/bz;
:try_end_93
.catchall {:try_start_50 .. :try_end_93} :catchall_c0
.catch Landroid/content/res/Resources$NotFoundException; {:try_start_50 .. :try_end_93} :catch_99
const-string v0, "Failed to close app icon InputStream."
invoke-static {v1, v0}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
:cond_98
:goto_98
return-object v2
:catch_99
move-exception v0
:try_start_9a
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v3
invoke-virtual {v3}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v3
const-string v4, "Crashlytics"
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "Failed to find app icon with resource ID: "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v6, p1, Lcom/a/a/al;->j:Lcom/a/a/ad;
iget v6, v6, Lcom/a/a/ad;->b:I
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-interface {v3, v4, v5, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_ba
.catchall {:try_start_9a .. :try_end_ba} :catchall_c0
const-string v0, "Failed to close app icon InputStream."
invoke-static {v1, v0}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
goto :goto_98
:catchall_c0
move-exception v0
const-string v2, "Failed to close app icon InputStream."
invoke-static {v1, v2}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
throw v0
.end method
.method public final a(Lcom/a/a/al;)Z
.registers 8
invoke-virtual {p0}, Lcom/a/a/af;->b()Lcom/a/a/a/bz;
move-result-object v0
const-string v1, "X-CRASHLYTICS-API-KEY"
iget-object v2, p1, Lcom/a/a/al;->a:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/a/a/a/bz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/bz;
move-result-object v0
const-string v1, "X-CRASHLYTICS-API-CLIENT-TYPE"
const-string v2, "android"
invoke-virtual {v0, v1, v2}, Lcom/a/a/a/bz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/bz;
move-result-object v0
const-string v1, "X-CRASHLYTICS-API-CLIENT-VERSION"
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v2
invoke-virtual {v2}, Lcom/a/a/a/cw;->i()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/a/a/a/bz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/bz;
move-result-object v0
invoke-static {v0, p1}, Lcom/a/a/af;->a(Lcom/a/a/a/bz;Lcom/a/a/al;)Lcom/a/a/a/bz;
move-result-object v1
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v0
const-string v2, "Crashlytics"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Sending app info to "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/a/a/af;->a()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v2, v3}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p1, Lcom/a/a/al;->j:Lcom/a/a/ad;
if-eqz v0, :cond_98
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v0
const-string v2, "Crashlytics"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "App icon hash is "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v4, p1, Lcom/a/a/al;->j:Lcom/a/a/ad;
iget-object v4, v4, Lcom/a/a/ad;->a:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v2, v3}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v0
const-string v2, "Crashlytics"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "App icon size is "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v4, p1, Lcom/a/a/al;->j:Lcom/a/a/ad;
iget v4, v4, Lcom/a/a/ad;->c:I
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "x"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p1, Lcom/a/a/al;->j:Lcom/a/a/ad;
iget v4, v4, Lcom/a/a/ad;->d:I
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v2, v3}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_98
invoke-virtual {v1}, Lcom/a/a/a/bz;->b()I
move-result v2
const-string v0, "POST"
invoke-virtual {v1}, Lcom/a/a/a/bz;->d()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_f8
const-string v0, "Create"
:goto_aa
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v3
invoke-virtual {v3}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v3
const-string v4, "Crashlytics"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v5, " app request ID: "
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v5, "X-REQUEST-ID"
invoke-virtual {v1, v5}, Lcom/a/a/a/bz;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-interface {v3, v4, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v0
const-string v1, "Crashlytics"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Result was "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v1, v3}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v2}, Lcom/a/a/a/cs;->a(I)I
move-result v0
if-nez v0, :cond_fb
const/4 v0, 0x1
:goto_f7
return v0
:cond_f8
const-string v0, "Update"
goto :goto_aa
:cond_fb
const/4 v0, 0x0
goto :goto_f7
.end method