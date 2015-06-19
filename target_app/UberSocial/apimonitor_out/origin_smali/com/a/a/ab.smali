.class final Lcom/a/a/ab;
.super Lcom/a/a/a/z;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/aa;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/a/a/a/bw;)V
    .registers 5

    sget-object v0, Lcom/a/a/a/by;->b:Lcom/a/a/a/by;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/a/a/a/z;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/a/a/a/bw;Lcom/a/a/a/by;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/a/a/z;)Z
    .registers 8

    invoke-virtual {p0}, Lcom/a/a/ab;->b()Lcom/a/a/a/bz;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-KEY"

    iget-object v2, p1, Lcom/a/a/z;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/bz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/bz;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/bz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/bz;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-VERSION"

    invoke-static {}, Lcom/a/a/e;->a()Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/e;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/bz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/bz;

    move-result-object v0

    iget-object v1, p1, Lcom/a/a/z;->b:Lcom/a/a/ae;

    invoke-virtual {v1}, Lcom/a/a/ae;->e()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {v1, v0}, Lcom/a/a/a/bz;->a(Ljava/util/Map$Entry;)Lcom/a/a/a/bz;

    move-result-object v0

    move-object v1, v0

    goto :goto_31

    :cond_43
    iget-object v0, p1, Lcom/a/a/z;->b:Lcom/a/a/ae;

    const-string v2, "report[file]"

    invoke-virtual {v0}, Lcom/a/a/ae;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "application/octet-stream"

    invoke-virtual {v0}, Lcom/a/a/ae;->d()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/a/a/a/bz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/a/a/a/bz;

    move-result-object v1

    const-string v2, "report[identifier]"

    invoke-virtual {v0}, Lcom/a/a/ae;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/a/a/a/bz;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/bz;

    move-result-object v0

    invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;

    move-result-object v1

    const-string v2, "Crashlytics"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sending report to: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/a/ab;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/a/a/a/bz;->b()I

    move-result v1

    invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;

    move-result-object v2

    const-string v3, "Crashlytics"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Create report request ID: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "X-REQUEST-ID"

    invoke-virtual {v0, v5}, Lcom/a/a/a/bz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;

    move-result-object v0

    const-string v2, "Crashlytics"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Result was: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/a/a/a/cs;->a(I)I

    move-result v0

    if-nez v0, :cond_c9

    const/4 v0, 0x1

    :goto_c8
    return v0

    :cond_c9
    const/4 v0, 0x0

    goto :goto_c8
.end method
