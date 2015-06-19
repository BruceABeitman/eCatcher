.class public final Lcom/spotify/android/paste/widget/f;
.super Ljava/lang/Object;
.source "SourceFile"
.field static a:Z
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x1
sput-boolean v0, Lcom/spotify/android/paste/widget/f;->a:Z
return-void
.end method
.method static a(Ljava/lang/Class;Ljava/lang/Object;)V
.registers 5
sget-boolean v0, Lcom/spotify/android/paste/widget/f;->a:Z
if-eqz v0, :cond_23
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
if-eq v0, p0, :cond_23
new-instance v0, Ljava/lang/UnsupportedOperationException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "You are not allowed to subclass "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_23
return-void
.end method