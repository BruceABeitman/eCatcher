.class public final Ltwitter4j/RateLimitStatusEvent;
.super Ljava/util/EventObject;
.source "RateLimitStatusEvent.java"
.field private static final serialVersionUID:J = -0x205ebb6ed80018d2L
.field private isAccountRateLimitStatus:Z
.field private rateLimitStatus:Ltwitter4j/RateLimitStatus;
.method constructor <init>(Ljava/lang/Object;Ltwitter4j/RateLimitStatus;Z)V
.registers 4
invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V
iput-object p2, p0, Ltwitter4j/RateLimitStatusEvent;->rateLimitStatus:Ltwitter4j/RateLimitStatus;
iput-boolean p3, p0, Ltwitter4j/RateLimitStatusEvent;->isAccountRateLimitStatus:Z
return-void
.end method