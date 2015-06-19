.class public final Lcom/googlecode/mp4parser/b/a/f;
.super Ljava/lang/Object;
.source "PictureParameterSet.java"
.field public a:Z
.field public b:Lcom/googlecode/mp4parser/b/a/h;
.field public c:I
.field public d:[Z
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/googlecode/mp4parser/b/a/h;
invoke-direct {v0}, Lcom/googlecode/mp4parser/b/a/h;-><init>()V
iput-object v0, p0, Lcom/googlecode/mp4parser/b/a/f;->b:Lcom/googlecode/mp4parser/b/a/h;
return-void
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "PPSExt{transform_8x8_mode_flag="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-boolean v1, p0, Lcom/googlecode/mp4parser/b/a/f;->a:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", scalindMatrix="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/googlecode/mp4parser/b/a/f;->b:Lcom/googlecode/mp4parser/b/a/h;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", second_chroma_qp_index_offset="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/googlecode/mp4parser/b/a/f;->c:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", pic_scaling_list_present_flag="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/googlecode/mp4parser/b/a/f;->d:[Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method