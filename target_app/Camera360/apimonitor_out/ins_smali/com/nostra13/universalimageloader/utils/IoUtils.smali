.class public final Lcom/nostra13/universalimageloader/utils/IoUtils;
.super Ljava/lang/Object;
.source "IoUtils.java"
.field private static final BUFFER_SIZE:I = 0x8000
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static closeSilently(Ljava/io/Closeable;)V
.registers 2
:try_start_0
invoke-interface {p0}, Ljava/io/Closeable;->close()V
:goto_3
:try_end_3
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4
return-void
:catch_4
move-exception v0
goto :goto_3
.end method
.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
.registers 7
const v4, 0x8000
const/4 v3, 0x0
new-array v0, v4, [B
:goto_6
invoke-virtual {p0, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I
move-result v1
const/4 v2, -0x1
if-ne v1, v2, :cond_e
return-void
:cond_e
invoke-virtual {p1, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
goto :goto_6
.end method