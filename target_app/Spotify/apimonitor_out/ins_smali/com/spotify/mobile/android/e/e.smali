.class public final Lcom/spotify/mobile/android/e/e;
.super Lcom/spotify/mobile/android/e/l;
.source "SourceFile"
.field private final a:Lcom/spotify/mobile/android/e/c;
.field private final b:Lcom/spotify/mobile/android/e/h;
.method public constructor <init>(Lcom/spotify/mobile/android/e/c;Lcom/spotify/mobile/android/e/h;)V
.registers 5
const-string v0, "Docking"
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/e/l;-><init>(Ljava/lang/String;)V
iput-object p1, p0, Lcom/spotify/mobile/android/e/e;->a:Lcom/spotify/mobile/android/e/c;
iput-object p2, p0, Lcom/spotify/mobile/android/e/e;->b:Lcom/spotify/mobile/android/e/h;
new-instance v0, Lcom/spotify/mobile/android/e/e$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/e/e$1;-><init>(Lcom/spotify/mobile/android/e/e;)V
iget-object v1, p0, Lcom/spotify/mobile/android/e/e;->a:Lcom/spotify/mobile/android/e/c;
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/e/c;->a(Lcom/spotify/mobile/android/e/o;)V
iget-object v1, p0, Lcom/spotify/mobile/android/e/e;->b:Lcom/spotify/mobile/android/e/h;
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/e/h;->a(Lcom/spotify/mobile/android/e/o;)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/e/e;)Lcom/spotify/mobile/android/e/c;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/e;->a:Lcom/spotify/mobile/android/e/c;
return-object v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/e/e;)Lcom/spotify/mobile/android/e/h;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/e;->b:Lcom/spotify/mobile/android/e/h;
return-object v0
.end method