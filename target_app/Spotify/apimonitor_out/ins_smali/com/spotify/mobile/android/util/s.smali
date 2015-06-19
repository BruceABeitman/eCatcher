.class public abstract Lcom/spotify/mobile/android/util/s;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/util/ah;
.field private final a:Ljava/util/Collection;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/util/s;->a:Ljava/util/Collection;
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/util/ah;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/util/s;->a:Ljava/util/Collection;
invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public b()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public final b(Lcom/spotify/mobile/android/util/ah;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/util/s;->a:Ljava/util/Collection;
invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
return-void
.end method
.method protected final c()Ljava/lang/String;
.registers 8
const/16 v6, 0xa
new-instance v2, Ljava/lang/StringBuilder;
const/16 v0, 0x800
invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/util/s;->a:Ljava/util/Collection;
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_f
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_6e
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/ah;
:try_start_1b
invoke-interface {v0}, Lcom/spotify/mobile/android/util/ah;->b()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_42
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const/16 v5, 0xa
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const/4 v1, 0x0
:goto_2f
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v5
if-ge v1, v5, :cond_3d
const/16 v5, 0x2d
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v1, v1, 0x1
goto :goto_2f
:cond_3d
const/16 v1, 0xa
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_42
invoke-interface {v0}, Lcom/spotify/mobile/android/util/ah;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_49
:try_end_49
.catch Ljava/lang/Exception; {:try_start_1b .. :try_end_49} :catch_4d
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_f
:catch_4d
move-exception v1
const-string v4, "Exception "
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v4, " while getting crash environment from "
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_49
:cond_6e
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method