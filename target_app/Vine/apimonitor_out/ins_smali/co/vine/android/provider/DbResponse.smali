.class public Lco/vine/android/provider/DbResponse;
.super Ljava/lang/Object;
.source "DbResponse.java"
.field public static final RESPONSE_CODE_ERROR:I = 0x3
.field public static final RESPONSE_CODE_NON_CONTINGUOUS_CLEAN_MADE:I = 0x4
.field public static final RESPONSE_CODE_NO_CHANGE:I = 0x2
.field public static final RESPONSE_CODE_SUCCESS:I = 0x1
.field public final code:I
.field public final numInserted:I
.field public final numUpdated:I
.method public constructor <init>(III)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lco/vine/android/provider/DbResponse;->numInserted:I
iput p2, p0, Lco/vine/android/provider/DbResponse;->numUpdated:I
iput p3, p0, Lco/vine/android/provider/DbResponse;->code:I
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "<DbResponse> inserted: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lco/vine/android/provider/DbResponse;->numInserted:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " updated: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lco/vine/android/provider/DbResponse;->numUpdated:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " responseCode: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lco/vine/android/provider/DbResponse;->code:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method