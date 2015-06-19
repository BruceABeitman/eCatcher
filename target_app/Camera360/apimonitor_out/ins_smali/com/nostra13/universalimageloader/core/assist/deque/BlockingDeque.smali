.class public interface abstract Lcom/nostra13/universalimageloader/core/assist/deque/BlockingDeque;
.super Ljava/lang/Object;
.source "BlockingDeque.java"
.implements Ljava/util/concurrent/BlockingQueue;
.implements Lcom/nostra13/universalimageloader/core/assist/deque/Deque;
.method public abstract add(Ljava/lang/Object;)Z
.end method
.method public abstract addFirst(Ljava/lang/Object;)V
.end method
.method public abstract addLast(Ljava/lang/Object;)V
.end method
.method public abstract contains(Ljava/lang/Object;)Z
.end method
.method public abstract element()Ljava/lang/Object;
.end method
.method public abstract iterator()Ljava/util/Iterator;
.end method
.method public abstract offer(Ljava/lang/Object;)Z
.end method
.method public abstract offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
.end method
.method public abstract offerFirst(Ljava/lang/Object;)Z
.end method
.method public abstract offerFirst(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
.end method
.method public abstract offerLast(Ljava/lang/Object;)Z
.end method
.method public abstract offerLast(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
.end method
.method public abstract peek()Ljava/lang/Object;
.end method
.method public abstract poll()Ljava/lang/Object;
.end method
.method public abstract poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
.end method
.method public abstract pollFirst(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
.end method
.method public abstract pollLast(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
.end method
.method public abstract push(Ljava/lang/Object;)V
.end method
.method public abstract put(Ljava/lang/Object;)V
.end method
.method public abstract putFirst(Ljava/lang/Object;)V
.end method
.method public abstract putLast(Ljava/lang/Object;)V
.end method
.method public abstract remove()Ljava/lang/Object;
.end method
.method public abstract remove(Ljava/lang/Object;)Z
.end method
.method public abstract removeFirstOccurrence(Ljava/lang/Object;)Z
.end method
.method public abstract removeLastOccurrence(Ljava/lang/Object;)Z
.end method
.method public abstract size()I
.end method
.method public abstract take()Ljava/lang/Object;
.end method
.method public abstract takeFirst()Ljava/lang/Object;
.end method
.method public abstract takeLast()Ljava/lang/Object;
.end method