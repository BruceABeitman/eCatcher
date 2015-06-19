.class final Lcom/google/android/gms/tagmanager/cz$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic Xr:Landroid/content/SharedPreferences$Editor;
.method constructor <init>(Landroid/content/SharedPreferences$Editor;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/tagmanager/cz$1;->Xr:Landroid/content/SharedPreferences$Editor;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cz$1;->Xr:Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method