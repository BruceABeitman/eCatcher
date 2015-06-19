.class public Lus/pinguo/androidsdk/PGRect;
.super Ljava/lang/Object;
.source "PGRect.java"
.field private static final INVALID_FLOAT:F = -1.0f
.field private rect_x_1:F
.field private rect_x_2:F
.field private rect_y_1:F
.field private rect_y_2:F
.method public constructor <init>()V
.registers 2
const/high16 v0, -0x4080
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v0, p0, Lus/pinguo/androidsdk/PGRect;->rect_x_1:F
iput v0, p0, Lus/pinguo/androidsdk/PGRect;->rect_y_1:F
iput v0, p0, Lus/pinguo/androidsdk/PGRect;->rect_x_2:F
iput v0, p0, Lus/pinguo/androidsdk/PGRect;->rect_y_2:F
return-void
.end method
.method public constructor <init>(FFFF)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lus/pinguo/androidsdk/PGRect;->rect_x_1:F
iput p2, p0, Lus/pinguo/androidsdk/PGRect;->rect_y_1:F
iput p3, p0, Lus/pinguo/androidsdk/PGRect;->rect_x_2:F
iput p4, p0, Lus/pinguo/androidsdk/PGRect;->rect_y_2:F
return-void
.end method
.method public getX_1()F
.registers 2
iget v0, p0, Lus/pinguo/androidsdk/PGRect;->rect_x_1:F
return v0
.end method
.method public getX_2()F
.registers 2
iget v0, p0, Lus/pinguo/androidsdk/PGRect;->rect_x_2:F
return v0
.end method
.method public getY_1()F
.registers 2
iget v0, p0, Lus/pinguo/androidsdk/PGRect;->rect_y_1:F
return v0
.end method
.method public getY_2()F
.registers 2
iget v0, p0, Lus/pinguo/androidsdk/PGRect;->rect_y_2:F
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "PGRect{rect_x_1="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v1, p0, Lus/pinguo/androidsdk/PGRect;->rect_x_1:F
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", rect_y_1="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lus/pinguo/androidsdk/PGRect;->rect_y_1:F
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", rect_x_2="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lus/pinguo/androidsdk/PGRect;->rect_x_2:F
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", rect_y_2="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lus/pinguo/androidsdk/PGRect;->rect_y_2:F
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method