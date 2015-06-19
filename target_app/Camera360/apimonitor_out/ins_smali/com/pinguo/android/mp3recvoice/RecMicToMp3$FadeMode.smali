.class public final enum Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;
.super Ljava/lang/Enum;
.source "RecMicToMp3.java"
.field private static final synthetic ENUM$VALUES:[Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;
.field public static final enum FadeIn:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;
.field public static final enum FadeOut:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;
const-string/jumbo v1, "FadeIn"
invoke-direct {v0, v1, v2}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;->FadeIn:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;
new-instance v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;
const-string/jumbo v1, "FadeOut"
invoke-direct {v0, v1, v3}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;->FadeOut:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;
const/4 v0, 0x2
new-array v0, v0, [Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;
sget-object v1, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;->FadeIn:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;
aput-object v1, v0, v2
sget-object v1, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;->FadeOut:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;
aput-object v1, v0, v3
sput-object v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;->ENUM$VALUES:[Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;
.registers 2
const-class v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;
return-object v0
.end method
.method public static values()[Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;
.registers 4
const/4 v3, 0x0
sget-object v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;->ENUM$VALUES:[Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;
array-length v1, v0
new-array v2, v1, [Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v2
.end method