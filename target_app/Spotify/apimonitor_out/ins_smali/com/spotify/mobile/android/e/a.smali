.class public final Lcom/spotify/mobile/android/e/a;
.super Lcom/spotify/mobile/android/e/l;
.source "SourceFile"
.field private final a:Lcom/spotify/mobile/android/e/l;
.field private final b:Lcom/spotify/mobile/android/e/l;
.method public constructor <init>(Lcom/spotify/mobile/android/e/l;Lcom/spotify/mobile/android/e/l;)V
.registers 5
const-string v0, "ActiveLocalPlayback"
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/e/l;-><init>(Ljava/lang/String;)V
iput-object p1, p0, Lcom/spotify/mobile/android/e/a;->a:Lcom/spotify/mobile/android/e/l;
iput-object p2, p0, Lcom/spotify/mobile/android/e/a;->b:Lcom/spotify/mobile/android/e/l;
new-instance v0, Lcom/spotify/mobile/android/e/a$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/e/a$1;-><init>(Lcom/spotify/mobile/android/e/a;)V
iget-object v1, p0, Lcom/spotify/mobile/android/e/a;->a:Lcom/spotify/mobile/android/e/l;
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/e/l;->a(Lcom/spotify/mobile/android/e/o;)V
iget-object v1, p0, Lcom/spotify/mobile/android/e/a;->b:Lcom/spotify/mobile/android/e/l;
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/e/l;->a(Lcom/spotify/mobile/android/e/o;)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/e/a;)Lcom/spotify/mobile/android/e/l;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/a;->a:Lcom/spotify/mobile/android/e/l;
return-object v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/e/a;)Lcom/spotify/mobile/android/e/l;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/a;->b:Lcom/spotify/mobile/android/e/l;
return-object v0
.end method