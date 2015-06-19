.class final Lcom/a/a/a/h;
.super Lcom/a/a/a/z;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/a/n;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/a/a/a/bw;)V
    .registers 5

    sget-object v0, Lcom/a/a/a/by;->b:Lcom/a/a/a/by;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/a/a/a/z;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/a/a/a/bw;Lcom/a/a/a/by;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;)Z
    .registers 11

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/a/a/a/h;->b()Lcom/a/a/a/bz;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v3, "android"

    invoke-virtual {v0, v1, v3}, Lcom/a/a/a/bz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/bz;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-VERSION"

    invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/a/a/cw;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/a/a/a/bz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/bz;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-KEY"

    invoke-virtual {v0, v1, p1}, Lcom/a/a/a/bz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/bz;

    move-result-object v3

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Adding analytics session file "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to multipart POST"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/a/a/a/bc;->c(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "session_analytics_file_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "application/vnd.crashlytics.android.events"

    invoke-virtual {v3, v5, v6, v7, v0}, Lcom/a/a/a/bz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/a/a/a/bz;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_26

    :cond_6a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sending "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " analytics files to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/a/a/a/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a/bc;->c(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/a/a/a/bz;->b()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Response code for analytics file send is "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/a/a/a/bc;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/a/a/a/cs;->a(I)I

    move-result v0

    if-nez v0, :cond_ab

    const/4 v2, 0x1

    :cond_ab
    return v2
.end method
