package com.wod.service;

import com.wod.entity.Checkout;

public interface CheckoutService {
    /**
     * 添加退房记录
     * @param checkout
     * @return
     */
    int addCheckout(Checkout checkout);
}
