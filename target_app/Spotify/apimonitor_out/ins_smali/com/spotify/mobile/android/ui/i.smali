.class  Lcom/spotify/mobile/android/ui/i;
.super Lcom/spotify/mobile/android/ui/j;
.source "SourceFile"
.field protected d:Ljava/lang/Class;
.field protected e:Landroid/support/v4/app/Fragment$SavedState;
.field protected f:Landroid/os/Bundle;
.field final synthetic g:Lcom/spotify/mobile/android/ui/f;
.method public constructor <init>(Lcom/spotify/mobile/android/ui/f;Landroid/os/Bundle;)V
.registers 6
const/4 v2, 0x0
iput-object p1, p0, Lcom/spotify/mobile/android/ui/i;->g:Lcom/spotify/mobile/android/ui/f;
invoke-static {p1}, Lcom/spotify/mobile/android/ui/f;->b(Lcom/spotify/mobile/android/ui/f;)Landroid/content/Context;
move-result-object v0
invoke-direct {p0, v0, p2}, Lcom/spotify/mobile/android/ui/j;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V
invoke-static {p1}, Lcom/spotify/mobile/android/ui/f;->b(Lcom/spotify/mobile/android/ui/f;)Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
const-string v0, "class"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v0
check-cast v0, Ljava/lang/Class;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/i;->d:Ljava/lang/Class;
const-string v0, "saved_state"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment$SavedState;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/i;->e:Landroid/support/v4/app/Fragment$SavedState;
const-string v0, "arguments"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/i;->f:Landroid/os/Bundle;
:try_start_33
const-class v0, Landroid/support/v4/app/Fragment$SavedState;
const-string v1, "a"
invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/i;->e:Landroid/support/v4/app/Fragment$SavedState;
invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
invoke-static {p1}, Lcom/spotify/mobile/android/ui/f;->b(Lcom/spotify/mobile/android/ui/f;)Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
:try_end_52
.catch Ljava/lang/NoSuchFieldException; {:try_start_33 .. :try_end_52} :catch_53
.catch Ljava/lang/IllegalArgumentException; {:try_start_33 .. :try_end_52} :catch_5c
.catch Ljava/lang/IllegalAccessException; {:try_start_33 .. :try_end_52} :catch_65
:goto_52
return-void
:catch_53
move-exception v0
const-string v1, ""
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_52
:catch_5c
move-exception v0
const-string v1, ""
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_52
:catch_65
move-exception v0
const-string v1, ""
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_52
.end method
.method public constructor <init>(Lcom/spotify/mobile/android/ui/f;Landroid/support/v4/app/Fragment;Lcom/spotify/mobile/android/ui/ActionBarTitle;)V
.registers 5
iput-object p1, p0, Lcom/spotify/mobile/android/ui/i;->g:Lcom/spotify/mobile/android/ui/f;
invoke-direct {p0, p3}, Lcom/spotify/mobile/android/ui/j;-><init>(Lcom/spotify/mobile/android/ui/ActionBarTitle;)V
invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/i;->d:Ljava/lang/Class;
invoke-static {p1}, Lcom/spotify/mobile/android/ui/f;->c(Lcom/spotify/mobile/android/ui/f;)Landroid/support/v4/app/r;
move-result-object v0
invoke-virtual {v0, p2}, Landroid/support/v4/app/r;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/i;->e:Landroid/support/v4/app/Fragment$SavedState;
invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->h()Landroid/os/Bundle;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/i;->f:Landroid/os/Bundle;
return-void
.end method
.method public constructor <init>(Lcom/spotify/mobile/android/ui/f;Ljava/lang/Class;Landroid/support/v4/app/Fragment$SavedState;Landroid/os/Bundle;Lcom/spotify/mobile/android/ui/ActionBarTitle;)V
.registers 6
iput-object p1, p0, Lcom/spotify/mobile/android/ui/i;->g:Lcom/spotify/mobile/android/ui/f;
invoke-direct {p0, p5}, Lcom/spotify/mobile/android/ui/j;-><init>(Lcom/spotify/mobile/android/ui/ActionBarTitle;)V
iput-object p2, p0, Lcom/spotify/mobile/android/ui/i;->d:Ljava/lang/Class;
iput-object p3, p0, Lcom/spotify/mobile/android/ui/i;->e:Landroid/support/v4/app/Fragment$SavedState;
iput-object p4, p0, Lcom/spotify/mobile/android/ui/i;->f:Landroid/os/Bundle;
return-void
.end method
.method public a()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public a(Landroid/support/v4/app/w;)Lcom/spotify/mobile/android/ui/i;
.registers 2
return-object p0
.end method
.method public b()Landroid/view/View;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public b(Landroid/support/v4/app/w;)Lcom/spotify/mobile/android/ui/h;
.registers 8
new-instance v0, Lcom/spotify/mobile/android/ui/h;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/i;->g:Lcom/spotify/mobile/android/ui/f;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/i;->d:Ljava/lang/Class;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/i;->e:Landroid/support/v4/app/Fragment$SavedState;
iget-object v4, p0, Lcom/spotify/mobile/android/ui/i;->f:Landroid/os/Bundle;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/i;->f()Lcom/spotify/mobile/android/ui/ActionBarTitle;
move-result-object v5
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/h;-><init>(Lcom/spotify/mobile/android/ui/f;Ljava/lang/Class;Landroid/support/v4/app/Fragment$SavedState;Landroid/os/Bundle;Lcom/spotify/mobile/android/ui/ActionBarTitle;)V
return-object v0
.end method
.method public c(Landroid/support/v4/app/w;)Lcom/spotify/mobile/android/ui/g;
.registers 9
new-instance v0, Lcom/spotify/mobile/android/ui/g;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/i;->g:Lcom/spotify/mobile/android/ui/f;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/i;->d:Ljava/lang/Class;
iget-object v4, p0, Lcom/spotify/mobile/android/ui/i;->e:Landroid/support/v4/app/Fragment$SavedState;
iget-object v5, p0, Lcom/spotify/mobile/android/ui/i;->f:Landroid/os/Bundle;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/i;->f()Lcom/spotify/mobile/android/ui/ActionBarTitle;
move-result-object v6
move-object v2, p1
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/g;-><init>(Lcom/spotify/mobile/android/ui/f;Landroid/support/v4/app/w;Ljava/lang/Class;Landroid/support/v4/app/Fragment$SavedState;Landroid/os/Bundle;Lcom/spotify/mobile/android/ui/ActionBarTitle;)V
return-object v0
.end method
.method public final c()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/i;->d:Ljava/lang/Class;
return-object v0
.end method
.method public final e()Landroid/os/Bundle;
.registers 4
invoke-super {p0}, Lcom/spotify/mobile/android/ui/j;->e()Landroid/os/Bundle;
move-result-object v0
const-string v1, "class"
iget-object v2, p0, Lcom/spotify/mobile/android/ui/i;->d:Ljava/lang/Class;
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
const-string v1, "saved_state"
iget-object v2, p0, Lcom/spotify/mobile/android/ui/i;->e:Landroid/support/v4/app/Fragment$SavedState;
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string v1, "arguments"
iget-object v2, p0, Lcom/spotify/mobile/android/ui/i;->f:Landroid/os/Bundle;
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Inactive: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/i;->d:Ljava/lang/Class;
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method