.class public final Lcom/spotify/mobile/android/util/ay;
.super Ljava/lang/Object;
.source "SourceFile"
.method public static a(Landroid/support/v4/app/Fragment;)V
.registers 3
:try_start_0
const-class v0, Landroid/support/v4/app/Fragment;
const-string v1, "D"
invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
const/4 v1, 0x0
invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
:try_end_10
.catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_10} :catch_11
.catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_10} :catch_18
return-void
:catch_11
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
:catch_18
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method