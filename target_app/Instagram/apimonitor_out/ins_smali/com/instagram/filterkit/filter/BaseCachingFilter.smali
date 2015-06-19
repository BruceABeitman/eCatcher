.class public abstract Lcom/instagram/filterkit/filter/BaseCachingFilter;
.super Ljava/lang/Object;
.source "BaseCachingFilter.java"
.implements Lcom/instagram/filterkit/filter/IgFilter;
.field private a:Lcom/instagram/filterkit/e/b;
.field protected b:Z
.field private c:Z
.method protected constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->b:Z
return-void
.end method
.method protected constructor <init>(Landroid/os/Parcel;)V
.registers 4
const/4 v0, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->b:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v1
if-ne v1, v0, :cond_f
:goto_c
iput-boolean v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->c:Z
return-void
:cond_f
const/4 v0, 0x0
goto :goto_c
.end method
.method protected final a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;
.registers 5
invoke-static {p2}, Lcom/instagram/filterkit/e/d;->a(Lcom/instagram/filterkit/e/c;)Z
move-result v0
if-eqz v0, :cond_4f
invoke-virtual {p0}, Lcom/instagram/filterkit/filter/BaseCachingFilter;->d()Z
move-result v0
if-eqz v0, :cond_14
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Passing in a null output surface to an overlay filter"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
iget-boolean v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->c:Z
if-eqz v0, :cond_3f
iget-object v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->a:Lcom/instagram/filterkit/e/b;
if-eqz v0, :cond_2b
invoke-interface {p2}, Lcom/instagram/filterkit/e/c;->c()I
move-result v0
iget-object v1, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->a:Lcom/instagram/filterkit/e/b;
invoke-interface {v1}, Lcom/instagram/filterkit/e/b;->c()I
move-result v1
if-eq v0, v1, :cond_2b
invoke-virtual {p0, p1}, Lcom/instagram/filterkit/filter/BaseCachingFilter;->a_(Lcom/instagram/filterkit/d/c;)V
:cond_2b
iget-object v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->a:Lcom/instagram/filterkit/e/b;
if-nez v0, :cond_39
invoke-interface {p2}, Lcom/instagram/filterkit/e/c;->c()I
move-result v0
invoke-virtual {p1, v0, p0}, Lcom/instagram/filterkit/d/c;->a(ILcom/instagram/filterkit/d/e;)Lcom/instagram/filterkit/e/b;
move-result-object v0
iput-object v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->a:Lcom/instagram/filterkit/e/b;
:cond_39
iget-object v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->a:Lcom/instagram/filterkit/e/b;
:goto_3b
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->b:Z
:goto_3e
return-object v0
:cond_3f
iget-object v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->a:Lcom/instagram/filterkit/e/b;
if-eqz v0, :cond_46
invoke-virtual {p0, p1}, Lcom/instagram/filterkit/filter/BaseCachingFilter;->a_(Lcom/instagram/filterkit/d/c;)V
:cond_46
invoke-interface {p2}, Lcom/instagram/filterkit/e/c;->c()I
move-result v0
invoke-virtual {p1, v0}, Lcom/instagram/filterkit/d/c;->a(I)Lcom/instagram/filterkit/e/b;
move-result-object v0
goto :goto_3b
:cond_4f
move-object v0, p2
goto :goto_3e
.end method
.method public a(Lcom/instagram/filterkit/d/c;)V
.registers 3
iget-object v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->a:Lcom/instagram/filterkit/e/b;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->a:Lcom/instagram/filterkit/e/b;
invoke-virtual {p1, v0, p0}, Lcom/instagram/filterkit/d/c;->c(Lcom/instagram/filterkit/e/b;Lcom/instagram/filterkit/d/e;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->a:Lcom/instagram/filterkit/e/b;
:cond_c
return-void
.end method
.method public final a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->c:Z
return-void
.end method
.method public final a_(Lcom/instagram/filterkit/d/c;)V
.registers 3
iget-object v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->a:Lcom/instagram/filterkit/e/b;
invoke-virtual {p1, v0, p0}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;Lcom/instagram/filterkit/d/e;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->a:Lcom/instagram/filterkit/e/b;
return-void
.end method
.method public final c()Lcom/instagram/filterkit/e/b;
.registers 2
iget-boolean v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->b:Z
if-nez v0, :cond_8
iget-boolean v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->c:Z
if-nez v0, :cond_a
:cond_8
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
iget-object v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->a:Lcom/instagram/filterkit/e/b;
goto :goto_9
.end method
.method public d()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method protected final n()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->b:Z
return-void
.end method
.method public w_()V
.registers 1
invoke-virtual {p0}, Lcom/instagram/filterkit/filter/BaseCachingFilter;->n()V
return-void
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
iget-boolean v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->c:Z
if-eqz v0, :cond_9
const/4 v0, 0x1
:goto_5
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
return-void
:cond_9
const/4 v0, 0x0
goto :goto_5
.end method
.method public final y_()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->c:Z
return v0
.end method
.method public final z_()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/filterkit/filter/BaseCachingFilter;->b:Z
return v0
.end method