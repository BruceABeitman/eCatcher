.class final Lcom/facebook/a/j;
.super Ljava/lang/Object;
.source "ErrorReporter.java"
.implements Ljava/io/FilenameFilter;
.field final synthetic a:[Ljava/lang/String;
.field final synthetic b:Lcom/facebook/a/i;
.method constructor <init>(Lcom/facebook/a/i;[Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/facebook/a/j;->b:Lcom/facebook/a/i;
iput-object p2, p0, Lcom/facebook/a/j;->a:[Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
.registers 8
const/4 v0, 0x0
iget-object v2, p0, Lcom/facebook/a/j;->a:[Ljava/lang/String;
array-length v3, v2
move v1, v0
:goto_5
if-ge v1, v3, :cond_10
aget-object v4, v2, v1
invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_11
const/4 v0, 0x1
:cond_10
return v0
:cond_11
add-int/lit8 v1, v1, 0x1
goto :goto_5
.end method