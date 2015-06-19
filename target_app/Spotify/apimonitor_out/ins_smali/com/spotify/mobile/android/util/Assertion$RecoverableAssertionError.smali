.class public Lcom/spotify/mobile/android/util/Assertion$RecoverableAssertionError;
.super Ljava/lang/Error;
.source "SourceFile"
.field private static final serialVersionUID:J = 0x1L
.field private final mDetails:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/util/Assertion$RecoverableAssertionError;-><init>(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V
iput-object p2, p0, Lcom/spotify/mobile/android/util/Assertion$RecoverableAssertionError;->mDetails:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/spotify/mobile/android/util/Assertion$RecoverableAssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;B)V
return-void
.end method
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;B)V
.registers 5
invoke-direct {p0, p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/util/Assertion$RecoverableAssertionError;->mDetails:Ljava/lang/String;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/util/Assertion$RecoverableAssertionError;->mDetails:Ljava/lang/String;
return-object v0
.end method