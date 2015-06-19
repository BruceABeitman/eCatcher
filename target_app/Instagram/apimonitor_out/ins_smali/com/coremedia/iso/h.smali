.class public final Lcom/coremedia/iso/h;
.super Ljava/lang/Object;
.source "IsoTypeWriterVariable.java"
.method public static a(JLjava/nio/ByteBuffer;I)V
.registers 7
packed-switch p3, :pswitch_data_40
:pswitch_3
new-instance v0, Ljava/lang/RuntimeException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "I don\'t know how to read "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " bytes"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_1e
const-wide/16 v0, 0xff
and-long/2addr v0, p0
long-to-int v0, v0
invoke-static {p2, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V
:goto_25
return-void
:pswitch_26
const-wide/32 v0, 0xffff
and-long/2addr v0, p0
long-to-int v0, v0
invoke-static {p2, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V
goto :goto_25
:pswitch_2f
const-wide/32 v0, 0xffffff
and-long/2addr v0, p0
long-to-int v0, v0
invoke-static {p2, v0}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;I)V
goto :goto_25
:pswitch_38
invoke-static {p2, p0, p1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
goto :goto_25
:pswitch_3c
invoke-static {p2, p0, p1}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;J)V
goto :goto_25
:pswitch_data_40
.packed-switch 0x1
:pswitch_1e
:pswitch_26
:pswitch_2f
:pswitch_38
:pswitch_3
:pswitch_3
:pswitch_3
:pswitch_3c
.end packed-switch
.end method