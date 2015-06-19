.class public final Lcom/google/android/gms/internal/jf;
.super Ljava/lang/Object;
.method public static a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
.registers 5
const/4 v2, 0x0
iget-object v0, p1, Landroid/database/CharArrayBuffer;->data:[C
if-eqz v0, :cond_e
iget-object v0, p1, Landroid/database/CharArrayBuffer;->data:[C
array-length v0, v0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
if-ge v0, v1, :cond_1b
:cond_e
invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
iput-object v0, p1, Landroid/database/CharArrayBuffer;->data:[C
:goto_14
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
iput v0, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I
return-void
:cond_1b
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
iget-object v1, p1, Landroid/database/CharArrayBuffer;->data:[C
invoke-virtual {p0, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V
goto :goto_14
.end method