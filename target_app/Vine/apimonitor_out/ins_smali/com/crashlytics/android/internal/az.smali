.class final Lcom/crashlytics/android/internal/az;
.super Lcom/crashlytics/android/internal/aA;
.source "SourceFile"
.field private synthetic a:Ljava/io/InputStream;
.field private synthetic b:Ljava/io/OutputStream;
.field private synthetic c:Lcom/crashlytics/android/internal/ay;
.method constructor <init>(Lcom/crashlytics/android/internal/ay;Ljava/io/Closeable;ZLjava/io/InputStream;Ljava/io/OutputStream;)V
.registers 6
iput-object p1, p0, Lcom/crashlytics/android/internal/az;->c:Lcom/crashlytics/android/internal/ay;
iput-object p4, p0, Lcom/crashlytics/android/internal/az;->a:Ljava/io/InputStream;
iput-object p5, p0, Lcom/crashlytics/android/internal/az;->b:Ljava/io/OutputStream;
invoke-direct {p0, p2, p3}, Lcom/crashlytics/android/internal/aA;-><init>(Ljava/io/Closeable;Z)V
return-void
.end method
.method public final synthetic a()Ljava/lang/Object;
.registers 5
iget-object v0, p0, Lcom/crashlytics/android/internal/az;->c:Lcom/crashlytics/android/internal/ay;
invoke-static {v0}, Lcom/crashlytics/android/internal/ay;->a(Lcom/crashlytics/android/internal/ay;)I
move-result v0
new-array v0, v0, [B
:goto_8
iget-object v1, p0, Lcom/crashlytics/android/internal/az;->a:Ljava/io/InputStream;
invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
move-result v1
const/4 v2, -0x1
if-eq v1, v2, :cond_18
iget-object v2, p0, Lcom/crashlytics/android/internal/az;->b:Ljava/io/OutputStream;
const/4 v3, 0x0
invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
goto :goto_8
:cond_18
iget-object v0, p0, Lcom/crashlytics/android/internal/az;->c:Lcom/crashlytics/android/internal/ay;
return-object v0
.end method