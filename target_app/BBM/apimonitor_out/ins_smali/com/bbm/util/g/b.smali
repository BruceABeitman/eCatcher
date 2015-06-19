.class public final Lcom/bbm/util/g/b;
.super Ljava/lang/Object;
.source "BbmVCardEntryHandler.java"
.implements Lcom/a/a/w;
.field public a:Lcom/google/b/a/l;
.field private b:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/bbm/util/g/b;->b:I
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/util/g/b;->a:Lcom/google/b/a/l;
return-void
.end method
.method public final a(Lcom/a/a/d;)V
.registers 4
iget v0, p0, Lcom/bbm/util/g/b;->b:I
if-lez v0, :cond_5
:goto_4
return-void
:cond_5
iget v0, p0, Lcom/bbm/util/g/b;->b:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/bbm/util/g/b;->b:I
const/4 v1, 0x0
:try_start_c
const-class v0, Lcom/bbm/util/g/a;
invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/util/g/a;
:goto_14
:try_end_14
.catch Ljava/lang/Exception; {:try_start_c .. :try_end_14} :catch_1b
invoke-static {v0}, Lcom/google/b/a/l;->c(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/util/g/b;->a:Lcom/google/b/a/l;
goto :goto_4
:catch_1b
move-exception v0
invoke-static {v0}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Throwable;)V
move-object v0, v1
goto :goto_14
.end method