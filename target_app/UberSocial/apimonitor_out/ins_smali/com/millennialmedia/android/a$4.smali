.class final Lcom/millennialmedia/android/a$4;
.super Lcom/millennialmedia/android/c;
.source "SourceFile"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/millennialmedia/android/c;-><init>()V
return-void
.end method
.method  a(Ljava/lang/String;ILjava/util/Date;Ljava/lang/String;JLjava/io/ObjectInputStream;)Z
.registers 15
const/4 v6, 0x0
const/4 v5, 0x1
if-eqz p3, :cond_2b
invoke-virtual {p3}, Ljava/util/Date;->getTime()J
move-result-wide v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
cmp-long v0, v0, v2
if-gtz v0, :cond_2b
:try_start_10
invoke-virtual {p7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/ai;
const-string v1, "AdCache"
const-string v2, "Deleting expired ad %s."
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-virtual {v0}, Lcom/millennialmedia/android/ai;->e()Ljava/lang/String;
move-result-object v0
aput-object v0, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_2b
:try_end_2b
.catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2b} :catch_2c
:goto_2b
return v5
:catch_2c
move-exception v0
const-string v1, "AdCache"
const-string v2, "There was a problem reading the cached ad %s."
new-array v3, v5, [Ljava/lang/Object;
aput-object p1, v3, v6
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_2b
.end method